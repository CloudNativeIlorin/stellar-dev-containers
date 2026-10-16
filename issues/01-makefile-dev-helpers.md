# [Trivial - 100 Pts] Add Makefile / Dev Script helpers for common Docker commands

## Complexity Tier
- **Tier:** Trivial
- **Points:** 100 Pts
- **Program:** Drips Stellar Wave Program
- **Labels:** `stellar-wave`, `good first issue`, `enhancement`, `dx`

---

## Description
To enhance developer ergonomics and lower the onboarding friction for developers new to Docker and Stellar/Soroban, we need a standard `Makefile` (and/or simple shell scripts) providing shortcut commands for everyday operations like building the container image, checking the toolchain versions, launching an interactive shell, and building smart contracts.

---

## Scope

### In-Scope:
- Create a root-level `Makefile` with standard targets:
  - `make build`: Builds the Docker image via `docker compose build`.
  - `make test`: Runs `stellar --version` inside the container to verify functionality.
  - `make shell`: Launches an interactive `/bin/bash` session inside `soroban-builder`.
  - `make clean`: Prunes unused builder containers and dangling layers.
  - `make help`: Displays a formatted menu of all available Makefile targets.
- Include a `.PHONY` declaration for all targets.
- Update `README.md` with a brief note or table documenting the Makefile shortcuts.

### Out-of-Scope:
- Creating custom Rust contracts or contract-specific compilation scripts.
- Modifying the GitHub Actions CI pipeline.

---

## Acceptance Criteria
- [ ] A root-level `Makefile` is added with `build`, `test`, `shell`, `clean`, and `help` targets.
- [ ] Running `make help` outputs a clear and readable description of all available targets.
- [ ] Running `make test` successfully outputs the installed `stellar` CLI version.
- [ ] All Makefile targets are properly marked as `.PHONY`.
- [ ] `README.md` is updated to mention the Makefile helpers in the Quickstart / Developer Workflow section.
- [ ] Pull request follows conventional commit guidelines and passes all CI checks.
