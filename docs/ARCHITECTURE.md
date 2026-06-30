# Architecture

ResQRules uses **layer-first clean architecture**. Four top-level layers, each grouped by area
(`shared/`, `charts/`, `session/`). The golden rule: **trust the server's fields** — the app
renders what the rules engine returns and never re-derives clinical routing locally.

```
presentation ──▶ domain ◀── data        (domain depends on nothing Flutter/Dio)
       │            ▲           │
       └── common ──┴───────────┘        (common = technical infra: config, di, network, errors)
```

## Layers

### domain (pure)
- `error/failure.dart` — `Failure`, a freezed union keyed off the API's stable error `code`s.
- `error/error_handler.dart` — interface: `Failure handle(Object error, [StackTrace? st])`.
- `models/` — entities (freezed, no JSON): `BilingualText` (`.resolve(Lang)`), `Lang`, `Chart`,
  `ScreenState`, `OptionItem`, `CfConfig`, `CfChoice`, `HemTierInfo`, `OverrideEvent`,
  `DangerPanelItem`, `SessionResponse`, `OverrideOutcome`.
- `repositories/` — `ChartsRepository`, `SessionRepository` interfaces returning
  `Future<Either<Failure, T>>`.
- `usecases/` — **only where there is logic**: `GetSortedCharts` (clinical ordering),
  `ResolveOverrideOutcome` (pure override→toast resolution).

### data
- `models/` — DTOs (`@JsonSerializable`), field-for-field with `reference/sample_responses.json`;
  each exposes `toDomain()`.
- `services/api_service.dart` — one Retrofit `@RestApi` with all six endpoints.
- `error/error_handler_impl.dart` — implements `ErrorHandler` (maps exceptions → `Failure`).
- `repositories/` — implementations: call the service, map DTO→domain, wrap in `Either`.

### common (technical infra, no UI)
- `config/api_config.dart` — base URL per platform.
- `di/` — `injection.dart` (`configureDependencies()`), `register_module.dart` (Dio, prefs).
- `error/exceptions.dart` — technical exceptions thrown by the interceptor.
- `network/` — Dio factory + error interceptor (DioException → typed exception).
- `utils/` — extensions/helpers.

### presentation (all UI + UI state)
- `theme/`, `localization/` (`LocaleCubit` + ARB), `router/` (go_router), `widgets/` (shared
  design-system primitives).
- `features/<feature>/` — `cubit/` (cubit + state), `<feature>_screen.dart`, and a `widgets/`
  folder for feature-specific components.

## Request lifecycle

```
Widget ──event──▶ Cubit ──▶ [UseCase if logic] ──▶ Repository (domain interface)
                                                        │
                                              RepositoryImpl (data)
                                                        │
                                                  ApiService (Retrofit)
                                                        │
                                                     Dio + interceptor
                                                        │
                                                   ResQRules backend
   ◀── freezed State ◀── Either<Failure, Entity> ◀── DTO.toDomain() ◀── JSON
```

On error, the interceptor throws a typed exception; the repository routes it through
`ErrorHandler` into a `Failure`; the cubit emits a state that the UI renders as a retry Snackbar
(never a full-screen error — the last clinical content stays visible).

## Error → Failure mapping

Hand-raised API errors carry `{detail:{code,message}}`. Branch on `code`, never string-match.

| `code` (HTTP) | `Failure` | UI action |
|---|---|---|
| `session_ended` (410) | `Failure.sessionEnded` | reset; do **not** retry `/step` |
| `invalid_input` (422) | `Failure.invalidInput` | ignore / re-prompt |
| `session_not_found` (404) | `Failure.sessionNotFound` | start a new session |
| `chart_not_found` (404) | `Failure.chartNotFound` | fix the request |
| `engine_unavailable` / `engine_timeout` (503/400) | `Failure.engine` | retry Snackbar |
| non-2xx without `detail.code`, or network failure | `Failure.connection` | retry Snackbar |

## Session state machine

`SessionCubit` holds `{ phase, sessionId, screen, dangerPanel, loading, toast, errorVisible,
lastAction, alive }`.

- **start(chartId)** → `repo.startSession` → store session/screen/dangerPanel.
- **step(input)** → `loading=true` (+lock danger panel) → `repo.step` →
  `ResolveOverrideOutcome(prevChartId, response)`:
  - `override_event` non-null & `guard_fired==false` → **jump** toast (salience verbatim, name
    from the new screen's `chart_title`).
  - `override_event` non-null & `guard_fired==true` → **guard** toast (name from current chart).
  - `override_event == null` & `chart_id` changed → **silent** swap (no toast).
  - else → none.
  Then set the new screen, `loading=false`. On failure: keep the screen, show the Snackbar,
  stash `lastAction` so a tap retries it.
- **danger zone tap** → `step('b'|'n'|'p'|'u')` (works on every interactive screen).
- **reset(chartId?)** / **endSession()** / **reconnect()** → `repo.reset` / `repo.end` /
  `repo.getSession` (sessionId persisted in `shared_preferences`).

Body visibility is driven off the `loading` boolean (not a settle timer) so a body can never get
stuck invisible under rapid taps.

## Bilingual / RTL strategy

Every payload field is `{en, ar}`, so language is a **client-only** setting (`LocaleCubit` →
`Lang`, persisted). `BilingualText.resolve(lang)` picks the string; the app sets `Directionality`
and mirrors layout (text align, option order, back-arrow, danger-zone order, CF-value side).
Latin acronyms and numerals stay Latin even in Arabic. Noto Sans and Noto Sans Arabic share
metrics, so toggling never reflows the layout.
