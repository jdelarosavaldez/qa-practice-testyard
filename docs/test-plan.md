# Initial test plan

## Purpose

Check a small set of observable UI and API behaviors against a local, reproducible TestYard instance.

## Scope after preflight

- UI: one shopping-cart flow using accessible names/roles where available.
- API: one sandbox isolation check, based on the verified API contract.
- Gherkin: readable scenario documentation in `features/`; not executed by Cucumber.
- Automation: Playwright + TypeScript with POM.

## Preconditions

- TestYard version/source and its MIT license are recorded.
- Local startup, `/api/health`, restart, and data isolation have been checked.
- Scenario details and selectors have been confirmed against the local app.

## Evidence

Capture actual pass/fail counts and link to the matching CI run. Keep the dashboard pending until a real run is published. Add limitations when behavior depends on in-memory data or time-based sandbox expiry.
