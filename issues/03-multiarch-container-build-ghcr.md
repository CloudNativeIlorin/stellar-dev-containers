# [Medium - 150 Pts] Add a multi-arch container build & publish workflow to GitHub Container Registry (GHCR)

## Complexity Tier
- **Tier:** Medium
- **Points:** 150 Pts
- **Program:** Drips Stellar Wave Program
- **Labels:** `stellar-wave`, `ci/cd`, `devops`, `ghcr`

---

## Description
Currently, users must build the Docker image locally from source, which takes considerable time due to Rust compilation. To make local development and CI runs instant, we need an automated release workflow that builds multi-architecture images (`linux/amd64` and `linux/arm64` for Apple Silicon & AWS Graviton) and publishes them to the GitHub Container Registry (`ghcr.io/cloudnativeilorin/stellar-dev-containers`).

---

## Scope

### In-Scope:
- Create `.github/workflows/publish.yml` triggered on:
  - Git tag pushes (e.g., `v*.*.*`).
  - Optional workflow dispatch (manual run).
- Set up QEMU (`docker/setup-qemu-action`) and Docker Buildx (`docker/setup-buildx-action`).
- Authenticate to GHCR using `${{ secrets.GITHUB_TOKEN }}`.
- Use `docker/metadata-action` to generate semver tags (`latest`, semantic release tags, commit SHA).
- Build and push images for platforms `linux/amd64` and `linux/arm64`.
- Update `docker-compose.yml` and `README.md` to reference the published GHCR pre-built image with pull instructions.

### Out-of-Scope:
- Publishing images to Docker Hub (GHCR is the primary target).
- Auto-generating release notes or changelogs.

---

## Acceptance Criteria
- [ ] A new workflow `.github/workflows/publish.yml` is added and configured to trigger on semantic release tags (`v*`).
- [ ] The workflow builds multi-architecture binaries targeting both `linux/amd64` and `linux/arm64`.
- [ ] Authentication uses `${{ secrets.GITHUB_TOKEN }}` with appropriate `packages: write` permissions.
- [ ] Images are tagged with both semantic version numbers and `:latest`.
- [ ] `README.md` includes instructions for pulling the pre-built image from GHCR directly (`docker pull ghcr.io/...`).
- [ ] Pull request follows conventional commit guidelines and passes all existing CI checks.
