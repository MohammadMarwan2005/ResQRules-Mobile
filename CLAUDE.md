# CLAUDE.md — ResQRules

Guidance for Claude Code (and any contributor) working in this repo. Keep this file current
when architecture, commands, or conventions change.

## What this app is

ResQRules is a phone-sized, **bilingual (EN/AR)** first-aid clinical decision-support app for
Red Cross / Red Crescent field paramedics. It walks a responder through emergency protocols
(catastrophic hemorrhage, cardiac arrest, choking, airway, general assessment) as a
server-driven Q&A. A persistent **danger panel** lets the responder jump to a life-threat
protocol at any moment. The clinical logic lives in a separate Python rules-engine backend;
this app is a thin, faithful client over its REST API.

> **Guiding principle (non-negotiable): trust the server's fields; never hardcode the
> prototype's mock maps.** See "Critical wiring rules" below.

## Source of truth

Everything the app must match lives in `reference/` — read it before changing behavior:
- `reference/INTEGRATION_NOTES.md` — START HERE. Screen-type→component map + the wiring rules.
- `reference/API.md` — the full REST contract (endpoints, `ScreenState`, `override_event`, errors).
- `reference/sample_responses.json` — real captured payloads; **build/verify DTOs against these.**
- `reference/design/README.md` — full visual + behavioral spec.
- `reference/design/design_system/component-apis.md` — prop contract for the 15 UI primitives.
- `reference/design/design_system/ds/tokens/*.css` — authoritative colors/type/spacing/radius/elevation.
- `reference/design/design_files/*.dc.html` — open in a browser to see intended look/behavior.

The plan we are executing is in `Plan.md` (repo root).

## Tech stack

Clean architecture · Cubit (flutter_bloc) · Retrofit + Dio · json_serializable (DTOs) ·
Freezed (entities + cubit states) · get_it + injectable (DI) · fpdart `Either<Failure,T>`
(errors) · go_router (nav) · intl + ARB / `flutter gen-l10n` (chrome strings) ·
shared_preferences (lang + session persistence) · google_fonts (Noto Sans / Noto Sans Arabic) ·
lucide_icons.

Flutter 3.29.2 / Dart 3.7.2. Freezed is pinned to **2.x** — use the `@freezed class X with _$X`
factory syntax (not 3.x sealed-class syntax).

## Commands

```bash
flutter pub get                                               # install deps
dart run build_runner build --delete-conflicting-outputs     # codegen (one-shot)
dart run build_runner watch  --delete-conflicting-outputs    # codegen (watch)
flutter gen-l10n                                              # regenerate AppL10n from .arb
flutter run                                                   # run (see base URL note)
flutter test                                                  # run tests
flutter analyze                                               # static analysis (keep clean)
dart format .                                                 # format
```

**Run codegen after touching any** `@freezed`, `@JsonSerializable`, `@RestApi`, or
`@injectable` declaration. Generated files (`*.g.dart`, `*.freezed.dart`, `*.config.dart`,
`lib/presentation/localization/gen/**`) are excluded from analysis and should not be hand-edited.

## Architecture & dependency rule

**Layer-first** clean architecture, grouped by area within each layer. Dependency direction:
**presentation → domain ← data**. The `domain` layer imports nothing from Flutter or Dio.
The four top-level layers are `common / data / domain / presentation`.

```
lib/
  main.dart  bootstrap.dart  app.dart
  common/                              # technical cross-cutting infra (no UI)
    config/        api_config.dart                  # base URL per platform
    di/            injection.dart  register_module.dart
    error/         exceptions.dart                  # technical exceptions thrown by the interceptor
    network/       dio_factory.dart  api_error_interceptor.dart
    utils/         <extensions / helpers>
  domain/                              # pure; imports nothing Flutter/Dio
    error/         failure.dart                     # error MODEL (freezed union ← stable API codes)
                   error_handler.dart               # error-handler INTERFACE (exception → Failure)
    models/        shared/  charts/  session/       # entities (freezed) incl. bilingual_text, lang
    repositories/  charts_repository.dart  session_repository.dart   # interfaces
    usecases/      charts/get_sorted_charts.dart  session/resolve_override_outcome.dart
  data/
    models/        shared/  charts/  session/       # *_dto.dart (@JsonSerializable + toDomain())
    services/      api_service.dart                 # single Retrofit @RestApi (all 6 endpoints)
    error/         error_handler_impl.dart          # implements domain ErrorHandler (exception→Failure)
    repositories/  charts_repository_impl.dart  session_repository_impl.dart
  presentation/                        # all UI + UI state
    theme/         app_colors/typography/spacing/radius/elevation/theme.dart
    localization/  locale_cubit.dart  l10n/*.arb  gen/**
    router/        app_router.dart                  # go_router config
    widgets/       <15 shared design-system primitives>
    features/
      splash/      splash_screen.dart
      home/        cubit/{charts_cubit,charts_state}.dart   home_screen.dart   widgets/chart_card.dart
      session/     cubit/{session_cubit,session_state}.dart session_screen.dart
                   widgets/{session_body,node_instruction,node_question,node_cf_question,node_hem_question,node_action,node_jump_stub}.dart
test/                                                # mirrors lib/
```

Per feature (`presentation/features/<feature>/`): a `cubit/` folder holding the cubit + its
state, the `<feature>_screen.dart` next to it, and (when the feature has its own components) a
`widgets/` folder for feature-specific widgets. Shared design-system primitives live in
`presentation/widgets/`.

### Layer conventions
- **DTOs** (`*_dto.dart`, `data/models/`): `@JsonSerializable()` plain classes, field-for-field
  with `sample_responses.json` (snake_case via `@JsonKey`/`fieldRename`). No Flutter imports.
  Each carries a `toDomain()` mapper; widgets never see DTOs.
- **Entities** (`domain/models/`): `freezed`, pure, no JSON. `BilingualText` has `.resolve(Lang)`;
  `Lang` enum is pure domain so `domain` stays self-contained.
- **Errors**: `Failure` model + `ErrorHandler` interface live in `domain/error/`. Technical
  exceptions live in `common/error/` (thrown by the Dio interceptor). `ErrorHandlerImpl`
  (`data/error/`) maps exception → `Failure` and is injected into repositories.
- **Repositories**: interfaces in `domain/repositories/`, impls in `data/repositories/`. Return
  `Future<Either<Failure, T>>`; `try/catch` the exceptions and convert via `ErrorHandler`.
- **Usecases — only when there is logic.** Plain fetches (start/get/step/reset/end session,
  raw getCharts) → the cubit calls the **repository directly**, no usecase. Logic-bearing
  operations get a usecase: `GetSortedCharts` (imposes clinical order) and
  `ResolveOverrideOutcome` (pure: maps `override_event` + `chart_id` change → jump/guard/
  silent/none).
- **Cubits**: states are `freezed` unions; widgets read **only** from cubit state. Each cubit +
  state lives in `presentation/features/<feature>/cubit/`.
- Naming: files `snake_case`, types `PascalCase`; suffix DTOs `Dto`, cubits `Cubit`, states
  `State`, screens `<feature>_screen.dart`, usecases by verb (`GetSortedCharts`).

## Critical wiring rules (the non-obvious core — encode exactly)

From `INTEGRATION_NOTES.md` + `API.md`:

1. **`screen.type` is the single discriminator** → one body widget per type
   (`instruction`/`question`/`cf_question`/`hem_question`/`action`/`jump_stub`). The session
   shell (AppBar + LoadingBar lane + DangerPanel) never changes.
2. **Chart switches come only from `override_event.jumped_to_chart`** — never a hardcoded
   zone→chart map. Backend routes `n`/`p`/`u`→`cpr_adult`, `b`→`hemorrhage` (the design
   README's "breathing→airway" is a wrong mock).
3. **OverrideToast is driven exclusively by a non-null `override_event`.**
   `guard_fired==false` → jump toast `⚡ Switched to: [Chart] (Salience N)` (use `salience`
   verbatim, `jumped_to_chart` for the name). `guard_fired==true` → guard toast
   `✓ Already in [Chart] — continuing` (name from the **current** `chart_id`; server sends
   `jumped_to_chart: null`).
4. **Option-driven jumps are SILENT.** If `chart_id` changes between consecutive screens AND
   `override_event == null`, swap the body with **no** toast.
5. **`hem_tier.current` = "tier just applied."** Dots `1..current` filled; `terminal:true`
   (only at `current==3`, tourniquet) = escalation exhausted.
6. **`GET /charts` is alphabetical — impose the fixed clinical order client-side:**
   `hemorrhage, cpr_adult, choking, airway, general_assessment`.
7. **Danger keys (`b`/`n`/`p`/`u`) work on every interactive screen**, including
   `hem_question` rechecks (pressing `b` while in hemorrhage → guard, not "no — controlled").
8. **Branch on `detail.code`, never string-match.** `session_ended`(410)→reset, don't retry
   `/step`; `invalid_input`(422)→ignore/re-prompt; `session_not_found`(404)→new session;
   `chart_not_found`(404)→fix request; `engine_unavailable`/`engine_timeout`(503/400)→error
   Snackbar (tap retries last action). Any non-2xx **without** `detail.code` → generic
   connection error → Snackbar retry. **Never a full-screen error** — last clinical content
   stays visible behind the Snackbar.
9. **Bilingual/RTL is client-only** (every field is `{en,ar}`). Mirror layout on toggle (text
   align, option order, back-arrow, danger-zone order, CF-value side). **Latin acronyms (CPR,
   AED, BVM, SpO₂) and all numerals stay Latin even in Arabic.**

## Design tokens (port the CSS exactly — `reference/design/design_system/ds/tokens/`)

- **Color**: primary `#CC0000`, primaryDark `#990000`, primaryLight `#FF3333`,
  primary100 `#FFEAEA`; success `#2D6A4F`, success100 `#F0FAF5`; warning `#E85D04`,
  warning100 `#FFF3EB`; text `#1A1A1A`, textSecondary `#4A4A4A`, border/divider `#E0E0E0`,
  surface `#F5F5F5`, card/page `#FFFFFF`; urgency critical=primary/high=warning/standard=
  textSecondary; scrim `rgba(0,0,0,.45)`.
- **Type**: Noto Sans + Noto Sans Arabic (identical metrics), weights **400/600/700 only**.
  display 22/700, heading 18/600, body 16/400 (lh 1.6), bodyBold 16/600 (lh 1.5),
  label 15/600, secondary 14/400, caption 12/400, micro 10/600 (danger labels).
- **Spacing**: 4/8/12/16/20/24/32; screen margin 16, card padding 20, option gap 12, CF gap 10.
- **Radius**: 6 / 8 / 12 / full. **Elevation**: level-1 `0 2 8 /.10` (down),
  level-2 `0 -2 12 /.20` (up), level-3 `0 -4 24 /.25` (up).
- **Touch**: 56dp min, danger zones 64dp, AppBar 56dp, loading bar 3dp.
- **Icons** (`lucide_icons`): droplet/wind/activity/user (danger), zap/check (toast),
  arrow-left/arrow-right (back, RTL-flip), rotate-ccw (reset).
- **Hard do-nots**: no gradients, no imagery/blur (except 60% loading-lock + sheet scrim), no
  decorative content-card icons, no text shadows, no bottom nav, no dark mode. **Do not draw
  the Red Cross/Red Crescent emblem** (protected) — identity is the `#CC0000` system + wordmark.

## Backend & base URL

No auth, CORS open. Default base URL (in `lib/common/config/api_config.dart`) is the hosted
backend **`https://resqrules.duckdns.org`** (e.g. `GET /charts`). For local dev, set
`ApiConfig.useLocalBackend = true` to target `uvicorn` (`uvicorn api.main:app --host 0.0.0.0
--port 8000 --reload`, from the separate `AlgorithmsAdult/` repo) — iOS sim/desktop
`localhost:8000`, Android emulator `10.0.2.2:8000`. Android debug allows cleartext via
`usesCleartextTraffic` for that local path.
