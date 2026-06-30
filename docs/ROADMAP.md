# Roadmap

Living checklist for the build. See `Plan.md` for the full plan and `CLAUDE.md` for conventions.

## Phase 0 — Setup & docs ✅
- [x] `pubspec.yaml` dependencies + `generate: true`
- [x] `l10n.yaml`, `analysis_options.yaml`
- [x] Android cleartext (`usesCleartextTraffic`) for local dev
- [x] `flutter pub get` resolves
- [x] `CLAUDE.md`, `Plan.md`, `README.md`, `docs/ARCHITECTURE.md`, `docs/ROADMAP.md`

## Phase 1 — Foundation ✅
- [x] Theme tokens: colors / typography / spacing / radius / elevation / `app_theme`
- [x] `domain/models/shared`: `Lang`, `BilingualText` (`.resolve`)
- [x] `domain/error`: `Failure` (sealed) + `ErrorHandler` interface
- [x] `common/error/exceptions`, `common/network` (Dio factory + error interceptor)
- [x] `data/error/error_handler_impl`
- [x] `presentation/localization`: `LocaleCubit` + ARB + `flutter gen-l10n`
- [x] `common/config/api_config`
- [x] DI: `injection.dart` + `register_module.dart`
- [x] `presentation/router/app_router` (go_router)
- [x] `app.dart` / `bootstrap.dart` / `main.dart`
- [x] `presentation/features/splash/splash_screen`

## Phase 2 — Design-system widgets (`presentation/widgets/`) ✅
- [x] rq_button · rq_outlined_button · rq_cf_button · rq_icon (+ app_icons)
- [x] rq_card · urgency_badge · tier_badge · page_citation
- [x] loading_bar · override_toast · error_snackbar
- [x] rq_app_bar · danger_panel · lang_toggle · reset_sheet

## Phase 3 — Data + Domain ✅
- [x] `domain/models`: charts + session entities (+ `OverrideOutcome` sealed)
- [x] `data/models`: DTOs byte-exact to `sample_responses.json` + `toDomain()`
- [x] `data/services/api_service` (Retrofit, 6 endpoints)
- [x] Repository interfaces (domain) + impls (data) with error mapping
- [x] Usecases: `GetSortedCharts`, `ResolveOverrideOutcome`

## Phase 4 — Presentation ✅
- [x] Home: `ChartsCubit`/state, `home_screen`, `chart_card` (clinical order via usecase)
- [x] Session: `SessionCubit`/state machine, `session_screen` shell
- [x] `session_body` switcher + 6 node widgets
- [x] DangerPanel / OverrideToast / Snackbar / ResetSheet wiring (the 9 rules)

## Phase 5 — Tests & polish ✅
- [x] DTO round-trip tests against `sample_responses.json` (17)
- [x] Usecase tests (`GetSortedCharts`, `ResolveOverrideOutcome`)
- [x] `bloc_test`: jump/guard/silent toasts, error-retry, session_ended
- [x] DI graph + ChartCard widget (incl. Arabic) smoke tests
- [x] `flutter analyze` clean, `dart format .` (36 tests passing)

## Remaining (needs the backend + a device — run manually)
- [ ] Live run against `uvicorn` (per-platform base URL) and end-to-end walkthrough
- [ ] Visual design-fidelity pass vs the `*.dc.html` prototypes
- [ ] Production hardening: self-host Noto fonts (offline), scope cleartext to debug only
