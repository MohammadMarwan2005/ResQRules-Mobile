# ResQRules

A phone-sized, **bilingual (EN / العربية)** first-aid clinical decision-support app for
Red Cross / Red Crescent field paramedics. It walks a responder through emergency protocols
(catastrophic hemorrhage, cardiac arrest, choking, airway, general assessment) as a
server-driven question-and-answer flow, with a persistent **danger panel** that can jump to a
life-threat protocol at any moment.

The clinical logic lives in a separate Python rules-engine backend; this Flutter app is a thin,
faithful client over its REST API. Every text field arrives bilingual, so switching language is
instant (no server round-trip) and the layout mirrors to RTL for Arabic.

> Clinical content shown in the app comes from the rules engine and is **not** medical guidance
> authored here.

## Features

- **Home** — the five protocol charts in a fixed clinical priority order.
- **Session** — a fixed shell (app bar + loading lane + danger panel) wrapping a body that
  swaps among six node types: instruction, question, certainty-factor question, hemorrhage
  escalation, terminal action, and unavailable-transfer stub.
- **Danger panel** — four always-visible zones (catastrophic bleeding, not breathing, no pulse,
  unconscious) that trigger protocol overrides; the server decides the jump and the app shows a
  jump/guard toast accordingly.
- **Bilingual + RTL** — live EN/AR toggle; Latin acronyms (CPR, AED, BVM, SpO₂) and numerals
  stay Latin in Arabic.

## Tech stack

Clean architecture (layer-first) · Cubit (`flutter_bloc`) · Retrofit + Dio · `json_serializable`
(DTOs) · Freezed (entities + cubit states) · `get_it` + `injectable` (DI) ·
fpdart `Either<Failure,T>` (errors) · `go_router` · `intl` + ARB (`flutter gen-l10n`) ·
`shared_preferences` · `google_fonts` (Noto Sans / Noto Sans Arabic) · `lucide_icons`.

Requires Flutter 3.29.x / Dart 3.7.x.

## Project structure

```
lib/
  common/         config · di · error/exceptions · network · utils
  domain/         error/{failure, error_handler} · models · repositories(interfaces) · usecases
  data/           models(DTOs) · services/api_service · error/error_handler_impl · repositories(impls)
  presentation/   theme · localization · router · widgets · features/{splash,home,session}
reference/        API contract, sample payloads, integration notes, design spec + tokens
docs/             ARCHITECTURE.md · ROADMAP.md
```

See `CLAUDE.md` for the architecture rules and the non-obvious "trust the server" wiring
contract, and `docs/ARCHITECTURE.md` for the deep dive.

## Getting started

### 1. Install dependencies & generate code

```bash
flutter pub get
dart run build_runner build --delete-conflicting-outputs   # freezed / json / retrofit / injectable
flutter gen-l10n                                            # localization (also runs on pub get)
```

### 2. Backend

The app talks to the hosted backend by default — **`https://resqrules.duckdns.org`** (e.g.
`GET https://resqrules.duckdns.org/charts`). No setup needed.

To run the backend locally instead (it lives in a separate repo, `AlgorithmsAdult/`):

```bash
cd /path/to/AlgorithmsAdult
pip3 install -r requirements.txt
uvicorn api.main:app --host 0.0.0.0 --port 8000 --reload    # 0.0.0.0 so a device/emulator can reach it
```

then set `useLocalBackend = true` in `lib/common/config/api_config.dart`. The local path
selects the URL per platform (iOS sim/desktop `localhost`, Android emulator `10.0.2.2`); debug
builds allow cleartext HTTP for that.

### 3. Run the app

```bash
flutter run
```

## Developer workflow

```bash
dart run build_runner watch --delete-conflicting-outputs   # regenerate on save
flutter test                                               # unit + cubit + widget tests
flutter analyze                                            # static analysis (keep clean)
dart format .                                              # format
```

Run code generation after changing any `@freezed`, `@JsonSerializable`, `@RestApi`, or
`@injectable` declaration. Generated files (`*.g.dart`, `*.freezed.dart`, `*.config.dart`,
`lib/presentation/localization/gen/**`) are not hand-edited.

## Reference material

Everything the app must match lives in `reference/`:
`API.md` (REST contract) · `sample_responses.json` (real payloads) · `INTEGRATION_NOTES.md`
(design-vs-API wiring rules) · `design/` (hi-fi spec, component prop contracts, design tokens,
runnable `.dc.html` prototypes).
