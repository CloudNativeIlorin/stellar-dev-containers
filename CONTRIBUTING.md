# Contributing to stellar-dev-containers

Thank you for your interest in contributing to **`stellar-dev-containers`**, maintained by **Cloud Native Ilorin**! 

This repository is an open-source initiative designed to bridge Cloud-Native tooling with the Stellar and Soroban ecosystem. We actively participate in the **Drips Stellar Wave Program**, offering scoped issues for contributors of all experience levels to build skills, earn points, and make meaningful open-source contributions.

---

## 🌊 Stellar Wave Program Guidelines

Issues tagged with `stellar-wave` represent pre-approved tasks eligible for community rewards:

1. **Claiming an Issue**:
   - Comment on the issue requesting assignment (e.g., *"I'd like to work on this issue under the Stellar Wave Program"*).
   - Wait for a maintainer from Cloud Native Ilorin to assign the issue to you before starting work.
   - Only one issue may be claimed per contributor at a time to keep tasks available for everyone.
2. **Issue Completion & Acceptance**:
   - Every issue includes strict **Acceptance Criteria**. All checkboxes must be satisfied.
   - Pull Requests that do not meet acceptance criteria or fail CI checks will not be eligible for wave points until revised.
3. **Inactivity Policy**:
   - If no update or draft PR is submitted within 48 hours of assignment, the issue may be unassigned and returned to the open pool.

---

## 🌿 Branch Naming Conventions

Always create a new branch from `main` using descriptive prefixes:

| Type | Branch Pattern | Example |
| :--- | :--- | :--- |
| **Feature** | `feat/<issue-number>-<short-description>` | `feat/1-add-makefile-helpers` |
| **Bugfix** | `fix/<issue-number>-<short-description>` | `fix/4-quickstart-port-binding` |
| **Documentation** | `docs/<short-description>` | `docs/update-quickstart-guide` |
| **Chores / CI** | `chore/<short-description>` or `ci/<short-description>` | `ci/add-hadolint-step` |

---

## 💬 Commit Message Standards

We follow the [Conventional Commits specification](https://www.conventionalcommits.org/en/v1.0.0/):

```text
<type>(<scope>): <subject>

[optional body]

[optional footer(s)]
```

### Allowed Types:
- `feat`: A new feature or capability (e.g., adding multi-arch build workflow).
- `fix`: A bug fix.
- `docs`: Documentation updates.
- `style`: Changes that do not affect the meaning of the code (whitespace, formatting).
- `refactor`: A code change that neither fixes a bug nor adds a feature.
- `chore`: Maintenance tasks, dependency updates, or toolchain tweaks.
- `ci`: Changes to CI/CD workflows and scripts.

### Examples:
- `feat(ci): add hadolint action to pull request workflow`
- `docs(readme): add troubleshooting section for docker compose`
- `fix(compose): correct volume mount permissions for cargo-cache`

---

## 🔄 Pull Request (PR) Requirements

When you are ready to submit your work:

1. **Test Locally**:
   - Ensure the Docker image builds cleanly:
     ```bash
     docker compose build
     ```
   - Ensure `stellar --version` executes properly inside the container:
     ```bash
     docker compose run --rm soroban-builder stellar --version
     ```
2. **Open a Pull Request**:
   - Target the `main` branch.
   - Link the relevant issue in your description:
     ```markdown
     Resolves #<ISSUE_NUMBER>
     ```
   - Provide a concise summary of changes made and attach verification logs or screenshots.
3. **Automated CI Validation**:
   - All PRs trigger our automated GitHub Actions workflow (`ci.yml`).
   - The workflow runs Hadolint Dockerfile linting and executes a test build.
   - **All checks must pass** before maintainers can approve and merge.

---

## 📋 Code of Conduct

As a community-led project by Cloud Native Ilorin, we are committed to providing a welcoming, inclusive, and harassment-free experience for everyone. Please be respectful, helpful, and collaborative in all discussions and code reviews.
