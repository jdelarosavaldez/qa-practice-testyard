# TestYard UI + API Practice

A small, reproducible practice project for UI and API quality checks.

## Status

**Bootstrap only.** TestYard has not yet passed a local Docker preflight. No automated results are available yet.

## Agreed approach

- Run a local copy of TestYard as the application under test; do not depend on its public demo.
- Automate with Playwright + TypeScript and Page Object Model (POM).
- Keep readable scenario notes in `features/*.feature`. Gherkin files document the cases only; they are not executed by Cucumber.
- Run the application and checks in Docker Compose locally and in GitHub Actions.
- Publish only real CI evidence to the portfolio dashboard.

The TestYard source, pinned to a reviewed version, will be included in this repository after the local preflight. Preserve its MIT license and attribution. Do not change the application unless a verified test need requires it.

## Planned layout

```text
app/testyard/       Local application under test (after preflight)
features/           Gherkin scenario documentation
tests/              Playwright UI and API checks
pages/               Page Objects
docs/                Test plan and portfolio copy
compose.yaml         Local app + test runner
```

## Initial validation

1. Start TestYard and check the UI and `/api/health`.
2. Restart it and verify clean, isolated test data.
3. Confirm the selected UI flows and accessible locators.
4. Implement a small UI and API suite; then publish its real CI summary.

## Portfolio summary

See [portfolio copy](docs/portfolio-copy.md) for the short English and Spanish descriptions. Until the first successful CI run, describe the project as **in progress** and show no pass counts or results.

## Project boundaries

This is separate from the portfolio website repository. It contains no employer code, credentials, personal data, or real user data.
