# ResQRules — Implementation Plan

## Context

`reference/` is a complete handoff for a Red Cross / Red Crescent field-paramedic clinical
decision-support app: a REST contract (`API.md`), real captured payloads
(`sample_responses.json`), the design-vs-API reconciliation rules (`INTEGRATION_NOTES.md`), a
hi-fi design spec (`design/README.md` + `component-apis.md`), and authoritative design tokens
(`design/design_system/ds/tokens/*.css`).

The repo is currently a bare `flutter create` scaffold (Flutter 3.29.2 / Dart 3.7.2, package
`resq_rules`, Android namespace `com.example.resq_rules`). We build the production app on top
using **clean architecture (layer-first) + Cubit + Retrofit + json_serializable + Freezed**,
plus: **get_it + injectable** (DI), **fpdart `Either<Failure,T>`** (errors), **go_router**
(routing), **intl + ARB** (chrome-string localization), and a **full end-to-end** build.

The surface is small (splash + 2 screens) but the behavior is precise. The governing
principle from `INTEGRATION_NOTES.md`: **trust the server's fields; never hardcode the
prototype's mock maps.**

### What the app does
- **Home** — lists 5 protocol charts (`GET /charts`) in a fixed clinical order.
- **Session** — server-driven Q&A. A fixed shell (AppBar + LoadingBar lane + persistent
  DangerPanel) wraps a body that swaps among **6 node types** keyed off `screen.type`:
  `instruction`, `question`, `cf_question`, `hem_question`, `action`, `jump_stub`. A persistent
  DangerPanel lets the responder jump to a life-threat protocol via keys `b`/`n`/`p`/`u`.
- **Bilingual EN/AR** — every payload carries `{en, ar}`; language switching is client-only
  and mirrors layout (RTL). Latin acronyms (CPR/AED/BVM/SpO₂) + numerals stay Latin in Arabic.

---

## Tech stack & dependencies

**dependencies**: flutter_bloc, bloc, get_it, injectable, dio, retrofit, freezed_annotation,
json_annotation, fpdart, go_router, shared_preferences, lucide_icons, google_fonts,
flutter_localizations (sdk), intl, cupertino_icons.

**dev_dependencies**: build_runner, freezed (2.x), json_serializable, retrofit_generator,
injectable_generator, bloc_test, mocktail, flutter_lints.

`flutter gen-l10n` configured via `l10n.yaml` (arb in `lib/common/localization/l10n`, output to
`lib/common/localization/gen`). Versions resolve against Dart 3.7.2 / Flutter 3.29.

---

## Architecture (layer-first, grouped by area within each layer)

Top-level layers: **common / data / domain / presentation**. Dependency rule:
**presentation → domain ← data**; `domain` imports nothing from Flutter/Dio. Within each layer,
files are grouped by area (`shared/`, `charts/`, `session/`). UI (widgets/theme/localization/
router) is presentation; the error **model + handler interface** are domain.

```
lib/
  main.dart                       # runApp(bootstrap)
  bootstrap.dart                  # WidgetsFlutterBinding, configureDependencies(), runApp
  app.dart                        # MaterialApp.router(go_router): theme, locale, RTL
  common/                         # technical cross-cutting infra (no UI)
    config/api_config.dart        # base URL per platform
    di/injection.dart             # @InjectableInit configureDependencies(); injection.config.dart (gen)
    di/register_module.dart       # @module: Dio, SharedPreferences singletons
    error/exceptions.dart         # ApiException(code,message,status), NetworkException, TimeoutException
    network/dio_factory.dart      # Dio + LogInterceptor + ErrorInterceptor (DioException→Exception)
    network/api_error_interceptor.dart
    utils/                        # extensions / helpers
  domain/                         # pure; imports nothing Flutter/Dio
    error/failure.dart            # error MODEL — Failure (freezed union) ← stable API codes
    error/error_handler.dart      # error-handler INTERFACE — Failure handle(Object error, [st])
    models/
      shared/{bilingual_text,lang}.dart       # freezed BilingualText{en,ar}.resolve(Lang); Lang enum (pure)
      charts/chart.dart
      session/{session_response,screen_state,option_item,cf_config,cf_choice,hem_tier_info,override_event,danger_panel_item,override_outcome}.dart
    repositories/{charts_repository,session_repository}.dart             # interfaces
    usecases/
      charts/get_sorted_charts.dart           # LOGIC: imposes fixed clinical order
      session/resolve_override_outcome.dart   # LOGIC: override_event + chart_id change → jump/guard/silent/none
  data/
    models/
      shared/bilingual_text_dto.dart
      charts/chart_dto.dart
      session/{session_response,screen_state,option,cf_config,cf_choice,hem_tier,override_event,danger_panel_item}_dto.dart
    services/api_service.dart     # retrofit @RestApi — POST /sessions, GET/POST .../{id}, /step, /reset, DELETE, GET /charts
    error/error_handler_impl.dart # implements domain ErrorHandler (exception→Failure)
    repositories/{charts_repository_impl,session_repository_impl}.dart   # DTO→domain + Either<Failure,_>
  presentation/                   # all UI + UI state
    theme/{app_colors,app_typography,app_spacing,app_radius,app_elevation,app_theme}.dart
    localization/locale_cubit.dart            # Lang state, persisted; flips Directionality
    localization/l10n/{app_en,app_ar}.arb     # chrome strings only → gen/ (generated)
    router/app_router.dart        # go_router: /splash → / (home) → /session/:chartId
    widgets/                      # 15 shared design-system primitives (component-apis.md)
      rq_button · rq_outlined_button · rq_cf_button · rq_card · urgency_badge · tier_badge
      page_citation · loading_bar · override_toast · error_snackbar · rq_app_bar
      danger_panel · lang_toggle · reset_sheet · rq_icon
    features/
      splash/splash_screen.dart               # wordmark + indeterminate bar, ~1.3s auto-advance
      home/
        cubit/{charts_cubit,charts_state}.dart
        home_screen.dart
        widgets/chart_card.dart
      session/
        cubit/{session_cubit,session_state}.dart
        session_screen.dart
        widgets/{session_body,node_instruction,node_question,node_cf_question,node_hem_question,node_action,node_jump_stub}.dart
test/  (mirrors lib/: cubit tests via bloc_test+mocktail, repository + mapper + usecase tests)
```

### Layer responsibilities
- **DTOs** (`data/models/`): `@JsonSerializable()`, field-for-field with
  `sample_responses.json`; each exposes `toDomain()`.
- **Entities** (`domain/models/`, `freezed`, no json): pure domain types; `BilingualText` has
  `.resolve(Lang)`; `Lang` lives in domain so the layer is self-contained.
- **Errors**: `Failure` model + `ErrorHandler` interface in `domain/error/`; technical
  exceptions in `common/error/`; `ErrorHandlerImpl` (`data/error/`) maps exception → `Failure`
  and is injected into the repository impls.
- **Repositories**: interface in `domain/`, impl in `data/`; map DTO→domain and wrap in
  `Either<Failure,T>` via try/catch, converting exceptions through `ErrorHandler`.
- **Usecases — only when there is logic.** Plain fetches → cubit calls the repo directly.
  Logic-bearing → a usecase (`GetSortedCharts`, `ResolveOverrideOutcome`).
- **Cubit states** (`freezed` unions): the only thing widgets read from. Per feature:
  `presentation/features/<feature>/` holds a `cubit/` folder (cubit + state), the
  `<feature>_screen.dart` next to it, and a `widgets/` folder for feature-specific widgets.

---

## Critical wiring rules (the non-obvious core — encode exactly)

1. **`screen.type` is the discriminator** (1:1 to a node widget). Shell never changes.
2. **Chart switches come only from `override_event.jumped_to_chart`** — no hardcoded zone→chart
   map. Backend: `n`/`p`/`u`→`cpr_adult`, `b`→`hemorrhage` (design README "breathing→airway"
   is a wrong mock).
3. **OverrideToast is driven exclusively by a non-null `override_event`.**
   `guard_fired==false` → `⚡ Switched to: [Chart] (Salience N)` (salience verbatim, name from
   the new screen's `chart_title`). `guard_fired==true` → `✓ Already in [Chart] — continuing`
   (name from the **current** `chart_title`; server sends `jumped_to_chart: null`).
4. **Option-driven jumps are SILENT.** `chart_id` changes + `override_event == null` → swap
   body, no toast. (This is what `ResolveOverrideOutcome` returns as `silent`.)
5. **`hem_tier.current` = "tier just applied."** Dots `1..current` filled; `terminal:true`
   (only at `current==3`) = escalation exhausted.
6. **`GET /charts` is alphabetical — `GetSortedCharts` imposes the fixed clinical order:**
   `hemorrhage, cpr_adult, choking, airway, general_assessment`.
7. **Danger keys work on every interactive screen**, incl. `hem_question` rechecks (`b` in
   hemorrhage → guard).
8. **Branch on `detail.code`, never string-match.** `session_ended`(410)→reset (don't retry
   /step); `invalid_input`(422)→ignore; `session_not_found`(404)→new session;
   `chart_not_found`(404)→fix; `engine_unavailable`/`engine_timeout`(503/400)→error Snackbar
   (tap retries last action). Non-2xx without `detail.code` → generic retry Snackbar. **Never
   a full-screen error.**
9. **Bilingual/RTL is client-only.** Mirror layout on toggle; acronyms + numerals stay Latin.

---

## Session cubit (the heart of the app)

State (`freezed`): `{ SessionPhase phase, String? sessionId, ScreenState? screen,
List<DangerPanelItem> dangerPanel, bool loading, ToastState? toast, bool errorVisible,
PendingAction? lastAction, bool alive }`.

Flow:
- `start(chartId)` → `repo.startSession(chartId)` directly → store sessionId/screen/danger_panel.
- `step(input)` → `loading=true` + lock DangerPanel → `repo.step(input)` directly → on success
  call `ResolveOverrideOutcome(prevChartId, response)` (rules 3 & 4) → set toast iff jump/guard,
  set new screen, `loading=false`; on failure: keep screen, show Snackbar, stash `lastAction`.
- Danger zone tap → `step('b'|'n'|'p'|'u')`. `reset(chartId?)` → `repo.reset`. `endSession()` →
  `repo.end`. `reconnect()` → `repo.getSession(id)` (sessionId persisted in SharedPreferences).
- Every transition runs through the loading gate (LoadingBar + 60%-locked DangerPanel + body
  fade/slide). Drive body visibility off the `loading` boolean so a body can't get stuck
  invisible under rapid taps.

`go_router` (`presentation/router/app_router.dart`): `/splash` → `/` (home) →
`/session/:chartId`. SessionCubit provided per session route (from get_it); LocaleCubit
app-wide above the router.

---

## Design tokens (port `ds/tokens/*.css` exactly)

- **Color** — primary `#CC0000`, dark `#990000`, light `#FF3333`, p100 `#FFEAEA`; success
  `#2D6A4F`, s100 `#F0FAF5`; warning `#E85D04`, w100 `#FFF3EB`; text `#1A1A1A`, text2
  `#4A4A4A`, border `#E0E0E0`, surface `#F5F5F5`, card/page `#FFFFFF`; urgency critical/high/
  standard = primary/warning/text2; scrim `rgba(0,0,0,.45)`.
- **Type** — Noto Sans (+Arabic), weights 400/600/700. display 22/700, heading 18/600, body
  16/400 (1.6), bodyBold 16/600 (1.5), label 15/600, secondary 14/400, caption 12/400, micro
  10/600.
- **Spacing** 4/8/12/16/20/24/32 (margin 16, card 20, option gap 12, CF gap 10).
  **Radius** 6/8/12/full. **Elevation** level-1 `0 2 8 /.10`, level-2 `0 -2 12 /.20` (up),
  level-3 `0 -4 24 /.25` (up). **Touch** 56dp (danger 64dp, AppBar 56dp, bar 3dp).
- **Icons** lucide: droplet/wind/activity/user, zap/check, arrow-left/right, rotate-ccw.
- **Do-nots** — no gradients/imagery/blur (except 60% loading-lock + sheet scrim), no
  decorative card icons, no text shadows, no bottom nav, no dark mode, **no Red Cross emblem**.

---

## API config

`common/config/api_config.dart` selects `baseUrl` per platform: iOS sim/desktop
`http://localhost:8000`; Android emulator `http://10.0.2.2:8000`; device
`http://<LAN-ip>:8000`. CORS open, no auth. Android debug allows cleartext
(`usesCleartextTraffic`, remove for HTTPS prod). Backend (separate `AlgorithmsAdult/` repo):
`uvicorn api.main:app --host 0.0.0.0 --port 8000 --reload`.

---

## Documentation deliverables

- **`CLAUDE.md`** — for future Claude Code sessions (commands, conventions, the 9 wiring
  rules, tokens + reference pointers, codegen reminder). ✅ written.
- **`Plan.md`** — this file. ✅ written.
- **`README.md`** — human-facing: what it is, run instructions (app + backend + per-platform
  base URL), structure, tech stack, codegen workflow.
- **`docs/ARCHITECTURE.md`** — layer diagram, request lifecycle, error→Failure table, the
  Session state machine, bilingual/RTL strategy.
- **`docs/ROADMAP.md`** — the phased checklist below as a living tracker.

(API/design specifics live in `reference/` and are linked, not duplicated.)

---

## Implementation phases (full end-to-end)

- **Phase 0 — Setup & docs**: pubspec deps, `l10n.yaml`, analysis_options, Android cleartext,
  `flutter pub get`; write `CLAUDE.md`, `Plan.md`, `README.md`, `docs/*.md`.
- **Phase 1 — Common foundation**: tokens/theme, `BilingualText`+`Lang`, `LocaleCubit` + ARB +
  gen-l10n, `Failure`/exceptions, `DioFactory` + error interceptor, DI, `app_router` (go_router),
  app/bootstrap/main, splash. Run codegen.
- **Phase 2 — Design-system widgets**: all 15 primitives in `common/widgets`, EN+AR/RTL aware;
  validate vs `Showcase.dc.html`.
- **Phase 3 — Data + Domain layers**: DTOs (both areas) byte-exact to the samples with
  `toDomain()`, domain entities, `api_service` (Retrofit, 6 endpoints), repository interfaces +
  impls with full error mapping, usecases (`GetSortedCharts`, `ResolveOverrideOutcome`). Run codegen.
- **Phase 4 — Presentation**: Home (ChartsCubit/state, HomePage, ChartCard, clinical order via
  usecase) and Session (SessionCubit/state machine, SessionPage shell, SessionBody switcher + 6
  node widgets, DangerPanel/OverrideToast/Snackbar/ResetSheet per the 9 rules). Run codegen.
- **Phase 5 — Tests & polish**: bloc_test for both cubits (silent-jump, jump/guard toasts,
  error-retry, session_ended), repo + mapper + usecase tests against captured JSON, widget smoke
  tests. `flutter analyze` clean, `dart format .`.

---

## Verification

1. **Codegen builds**: `dart run build_runner build --delete-conflicting-outputs` succeeds;
   `flutter analyze` clean.
2. **DTO fidelity**: a test deserializes every entry in `reference/sample_responses.json`
   (each `screen.type`, both override events, the silent jump, charts + danger_panel) and
   asserts round-trip equality.
3. **Logic units**: `GetSortedCharts` returns the fixed clinical order from an alphabetical
   input; `ResolveOverrideOutcome` returns jump (salience 100→hemorrhage) for danger `b`, guard
   for `b`-while-in-hemorrhage, and silent for an option-driven `chart_id` change with null
   override.
4. **Cubit behavior** (`bloc_test`, mocked repo): start→step happy path; danger `b` → jump
   toast; `b`-while-in-hemorrhage → guard toast; option-driven `chart_id` change with null
   override → **no** toast; `engine_timeout` keeps screen + shows retry; `session_ended` triggers
   reset.
5. **Live run**: start `uvicorn`, `flutter run`, set base URL per platform. Home shows 5 cards
   in clinical order → open Heimlich → step through → press each danger zone (verify jump vs
   guard toasts + salience) → reach terminal `action` (End Session / Start Again) and `jump_stub`
   (Back to Home) → toggle EN/AR and confirm full RTL mirroring with Latin acronyms/numerals →
   kill the server mid-step → confirm retry Snackbar (not full-screen).
6. **Design fidelity**: open the `*.dc.html` prototypes beside the running app; compare
   tokens/spacing/motion per node type and the Home cards.
