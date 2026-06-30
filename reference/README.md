# reference/ — everything the Flutter app needs

Source-of-truth materials for building the ResQRules mobile app against the Python rules-engine
API. Read in this order:

1. **`INTEGRATION_NOTES.md`** — START HERE. Screen-type → component map, the "trust the server"
   wiring rules, error handling, RTL, and how to run/reach the backend. This is the glue.
2. **`API.md`** — the full REST contract (endpoints, `ScreenState`, `override_event`, error
   shape). Authoritative and current (matches the running backend).
3. **`sample_responses.json`** — real captured response envelopes, one per `screen.type` plus
   override/guard/silent-jump examples. Build your DTOs against these — they are byte-exact to
   what the server emits.
4. **`design/`** — the hi-fi design handoff:
   - `README.md` — full visual + behavioral spec (screens, node bodies, motion, tokens).
   - `design_system/component-apis.md` — prop contract for all 15 UI primitives.
   - `design_system/ds/tokens/*.css` — authoritative colors / type / spacing / radius / elevation.
   - `design_files/*.dc.html` — open in a browser to see the intended look/behavior. `ResQRules.dc.html`
     is the runnable prototype; `Showcase.dc.html` shows every component in EN + AR.

> The `.dc.html` files use a throwaway prototype runtime — read them for structure, copy, and exact
> values, but implement in idiomatic Flutter (do **not** port the runtime). Clinical copy in the
> prototype is illustrative; the real text comes from the API.
