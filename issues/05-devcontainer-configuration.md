# [High - 200 Pts] Add full `.devcontainer` configuration for VS Code & GitHub Codespaces with Rust and Soroban extensions preloaded

## Complexity Tier
- **Tier:** High
- **Points:** 200 Pts
- **Program:** Drips Stellar Wave Program
- **Labels:** `stellar-wave`, `devcontainer`, `vscode`, `codespaces`, `dx`

---

## Description
To provide a seamless, cloud-native "one-click" developer onboarding experience in Visual Studio Code (Remote - Containers) and GitHub Codespaces, we need a complete `.devcontainer` directory containing a configured `devcontainer.json`. When a developer opens this repository in VS Code or Codespaces, it should immediately spin up the container, mount the project, and automatically install curated IDE extensions for Rust and Stellar/Soroban development.

---

## Scope

### In-Scope:
- Create `.devcontainer/devcontainer.json` referencing either the local `Dockerfile` or `docker-compose.yml`.
- Pre-install and configure recommended VS Code extensions:
  - `rust-lang.rust-analyzer` (Rust language server and intellisense).
  - `tamasfe.even-better-toml` (TOML configuration syntax).
  - `serayuzgur.crates` (Crates package management).
  - `vadimcn.vscode-lldb` (Native code debugging).
- Configure recommended container settings:
  - Enable `rust-analyzer.check.command`: `clippy`.
  - Format on save (`editor.formatOnSave: true`).
- Configure post-create lifecycle hooks (`postCreateCommand`) to verify the `stellar-cli` installation and print a friendly welcome message.
- Configure port forwarding for port `8000` (Stellar RPC) when working with local network nodes.
- Document how to launch the project using the "Open in Dev Containers" extension or GitHub Codespaces in `README.md`.

### Out-of-Scope:
- Modifying the core `Dockerfile` build steps unless required for Dev Container compatibility (e.g. non-root user creation).
- Adding complex multi-container orchestration beyond the existing compose setup.

---

## Acceptance Criteria
- [ ] A `.devcontainer/devcontainer.json` configuration file is added to the repository.
- [ ] Opening the repository in VS Code with the Dev Containers extension builds and launches the environment cleanly.
- [ ] Preloaded extensions (`rust-analyzer`, `even-better-toml`, `crates`, `lldb`) are automatically installed on container initialization.
- [ ] Terminal opens inside `/workspace` with `stellar-cli` immediately available on the PATH.
- [ ] `postCreateCommand` runs without errors upon initial creation.
- [ ] `README.md` is updated with a "Develop with Dev Containers / Codespaces" section including step-by-step instructions.
- [ ] Pull request follows conventional commit guidelines and passes all CI checks.
