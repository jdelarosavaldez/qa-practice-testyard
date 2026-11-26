# Development and test environment

## Branches

- `main`: reviewed release baseline.
- `develop`: integration and automated validation.
- `feat/*`, `fix/*`, and `docs/*`: short-lived work branches. Open pull requests to `develop`.
- When `develop` is ready for a release, review and merge it to `main`.

The existing portfolio website keeps its own workflow to `main`; this branch model applies only to the practice repository.

## Test runs

After TestYard passes its local preflight, GitHub Actions will start the local Docker Compose stack for pull requests and pushes to `develop`, check app health, run Playwright UI/API tests, retain the real report, then stop the stack. This is a reproducible, temporary CI environment; TestYard will not stay online between runs.

The practice repository is public, so standard GitHub-hosted runners are free. Visitors can view Actions results. Starting a run manually requires GitHub write access.

## Hosting decision

No always-on TestYard deployment is planned for the first version.

- **GitHub Pages or Cloudflare Pages:** suitable for the static portfolio and review previews; they do not run the existing TestYard Node server as a permanent Docker service.
- **Cloudflare Containers:** can run Docker-based apps, but currently requires a paid Workers plan. Keep it out of scope while a temporary CI stack meets the need.
- **If a permanent demo is needed later:** compare cost, idle/sleep behavior, test-data reset, and access controls before choosing a host.

## Portfolio results

The static portfolio reads only a sanitized summary produced from completed CI runs. It shows the latest real status, selected counts, and run links. It does not trigger a TestYard deployment and does not imply the app is online.
