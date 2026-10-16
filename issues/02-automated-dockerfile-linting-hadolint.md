# [Trivial - 100 Pts] Add automated Dockerfile linting (`hadolint-action`) to the CI workflow

## Complexity Tier
- **Tier:** Trivial
- **Points:** 100 Pts
- **Program:** Drips Stellar Wave Program
- **Labels:** `stellar-wave`, `ci/cd`, `good first issue`, `quality`

---

## Description
Maintaining clean, efficient, and secure Dockerfiles is critical for cloud-native container environments. We want to reinforce our automated CI pipeline by ensuring Dockerfile best practices (such as layer ordering, cache invalidation avoidance, and untrusted flag warnings) are validated on every Pull Request using `hadolint/hadolint-action`.

---

## Scope

### In-Scope:
- Review and refine the `lint` job in `.github/workflows/ci.yml` using `hadolint/hadolint-action@v3`.
- Configure `failure-threshold` (set to `error` or `warning`).
- Create a `.hadolint.yaml` configuration file at repository root if any specific rule overrides or ignore directives are needed (with documented explanations).
- Validate that the existing `Dockerfile` passes the linter with zero errors or warnings.

### Out-of-Scope:
- Multi-architecture container compilation.
- Container registry publishing.

---

## Acceptance Criteria
- [ ] `.github/workflows/ci.yml` includes an active, dedicated Hadolint step that runs on all pull requests targeting `main`.
- [ ] If custom Hadolint rules are introduced, a `.hadolint.yaml` configuration file is placed at repository root with explanatory comments.
- [ ] The current `Dockerfile` builds and passes all Hadolint checks with zero warnings or errors.
- [ ] Pull Request builds trigger the lint check and report inline annotations if errors occur.
- [ ] Pull request follows conventional commit guidelines and passes all CI checks.
