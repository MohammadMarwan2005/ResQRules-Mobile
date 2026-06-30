# ResQRules — Flutter ↔ API Integration Notes

The bridge between the **design** (`design/`) and the **API contract** (`API.md`). These are the
rules that are *not* obvious from either document alone — they came out of a design-vs-API review.
The guiding principle: **trust the server's fields, never the prototype's hardcoded mock maps.**

---

## 1. Screen type → design component (1:1)

The server's `screen.type` is the single discriminator. Render one body component per type; the
session shell (AppBar + LoadingBar lane + DangerPanel) never changes.

| `screen.type` | Design component (`design/design_files/`) | Notes |
|---------------|-------------------------------------------|-------|
| `instruction` | `NodeInstruction.dc.html` | one "Continue" button (`options[0]`, id 1) |
| `question`    | `NodeQuestion.dc.html`    | 2–4 `OutlinedButton`s from `options[]` |
| `cf_question` | `NodeCFQuestion.dc.html`  | 4 `CfButton`s from `cf.choices[]`, colored by `cf_value` |
| `hem_question`| `NodeHemQuestion.dc.html` | intervention callout + `TierBadge` + yes/no |
| `action`      | `NodeAction.dc.html`      | terminal; "End Session" + "Start Again" |
| `jump_stub`   | `NodeJumpStub.dc.html`    | grey "not yet available"; `stub_target` = chart id |

Home screen = `ChartCard.dc.html` × 5 from `GET /charts`. Full spec in `design/README.md`;
prop contracts in `design/design_system/component-apis.md`; tokens in
`design/design_system/ds/tokens/*.css`. Real payloads for every type are in
`sample_responses.json`.

---

## 2. Wiring rules (the review punch-list)

1. **Chart switches come only from `override_event.jumped_to_chart`.** Never hardcode a
   zone→chart map. The design README's "breathing → airway" note is a *mock* and is wrong: the
   backend routes `n`/`p`/`u` → `cpr_adult` and `b` → `hemorrhage`. Read the server's field.

2. **Toast salience is `override_event.salience`, verbatim.** Ignore the prototype's mock salience
   table. Real values: bleeding 100, not-breathing/no-pulse 90, unconscious 80.

3. **Option-driven jumps are SILENT (no toast).** When tapping an option switches charts (e.g.
   choking → CPR when unconscious), the server returns `override_event: null` and the next screen
   is simply the new chart's first screen. Detect via `chart_id` change and **swap the body
   without announcing it.** Drive the OverrideToast *exclusively* off a non-null `override_event`.
   (See `transparent_jump:silent` in `sample_responses.json`.)

4. **Guard toast text comes from the current chart, not the response.** On a guard
   (`guard_fired: true`) the server sends `jumped_to_chart: null`. Build "✓ Already in [Chart]"
   from the *current* `chart_id` (or map from `override_event.kind`).

5. **`hem_tier.current` = "tier just applied"** (not "tier being entered"). When the server says
   `current: N`, dots `1..N` are filled/applied; `terminal: true` (only at `current == 3`,
   tourniquet) means escalation is exhausted. Pick your `TierBadge` ring convention against this
   meaning, not the design component's default.

6. **`GET /charts` is alphabetical — impose the clinical order yourself.** The API has no priority
   field (and 3 charts share `urgency: critical`). Fixed display order:

   | # | `chart_id` | EN title | urgency |
   |---|------------|----------|---------|
   | 1 | `hemorrhage`         | Catastrophic Hemorrhage              | critical |
   | 2 | `cpr_adult`          | Cardio-Respiratory Arrest Adult       | critical |
   | 3 | `choking`            | Heimlich Maneuver                     | critical |
   | 4 | `airway`             | Upper Airway Management               | high     |
   | 5 | `general_assessment` | General Intervention Process & Assessment | standard |

---

## 3. Error handling

Hand-raised errors return `{"detail": {"code", "message"}}` (see API.md → Error shape). Branch on
`code`, don't string-match:

| `code` | Action |
|--------|--------|
| `session_ended` (410) | session is over → `POST /reset`, do **not** retry `/step` |
| `invalid_input` (422) | ignore / re-prompt (shouldn't happen if you only send valid inputs) |
| `session_not_found` (404) | start a fresh session |
| `chart_not_found` (404) | fix the request |
| `engine_unavailable` / `engine_timeout` (503/400) | show the error Snackbar → tap retries last action |

Any non-2xx **without** a `detail.code` (e.g. a network failure or FastAPI's framework-level 422
list shape) → treat as a generic connection error → Snackbar retry. Never a full-screen error; the
last clinical content stays visible behind the Snackbar.

---

## 4. Bilingual / RTL

- Every text field is `{en, ar}` already — language switch is **client-only, no server round-trip.**
- Mirror layout on toggle (text align, option order, back-arrow, danger-zone order, CF-value side).
- **Latin acronyms (CPR, AED, BVM, SpO₂) and all numerals stay Latin even in Arabic.**

---

## 5. Danger panel (persistent)

4 fixed zones → input keys: Bleeding `b`, Not Breathing `n`, No Pulse `p`, Unconscious `u`. POST
the key to `/step`. The server decides the jump and returns `override_event`. Danger keys work on
**every** interactive screen including `hem_question` rechecks (pressing `b` while already in
hemorrhage → guard).

---

## 6. Running the backend (for local dev)

The Python backend lives in the original repo (`AlgorithmsAdult/`), not here.

```bash
cd /path/to/AlgorithmsAdult
pip3 install -r requirements.txt
uvicorn api.main:app --host 0.0.0.0 --port 8000 --reload   # 0.0.0.0 so a device/emulator can reach it
```

Base URL from the app (set in your api config):
- **iOS simulator / desktop:** `http://localhost:8000`
- **Android emulator:** `http://10.0.2.2:8000` (the emulator's alias for the host machine)
- **Physical device on same Wi-Fi:** `http://<your-machine-LAN-ip>:8000`

CORS is already wide-open on the server (`allow_origins=["*"]`).
