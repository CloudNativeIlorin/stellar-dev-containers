# [Medium - 150 Pts] Integrate `stellar/quickstart` local testnet service into `docker-compose.yml`

## Complexity Tier
- **Tier:** Medium
- **Points:** 150 Pts
- **Program:** Drips Stellar Wave Program
- **Labels:** `stellar-wave`, `docker`, `stellar-rpc`, `soroban`

---

## Description
Soroban developers frequently need a local network to deploy, invoke, and simulate smart contracts without incurring public testnet latency or rate-limiting. The official `stellar/quickstart` container provides an all-in-one standalone / testnet node including Soroban RPC. We want to uncomment, configure, and fully integrate `stellar/quickstart` into our `docker-compose.yml` so that developers can spin up a complete local development node with a single command.

---

## Scope

### In-Scope:
- Update `docker-compose.yml` to enable the `stellar-quickstart` service using the official `stellar/quickstart:latest` image.
- Configure port mappings (port `8000:8000` for Horizon / Soroban RPC).
- Configure persistent volume mapping for node state if appropriate (`stellar-data`).
- Define a shared internal Docker network (`stellar-net`) allowing the `soroban-builder` container to communicate directly with `http://stellar-quickstart:8000/soroban/rpc`.
- Include environment configuration options or docker-compose profiles (e.g., `--profile testnet` or `--profile local`) for switching between local standalone and public testnet modes.
- Add documentation in `README.md` explaining how to configure `stellar-cli` to point to the local RPC node:
  ```bash
  stellar network add --rpc-url http://stellar-quickstart:8000/soroban/rpc --network-passphrase "Standalone Network ; February 2017" local
  ```

### Out-of-Scope:
- Building custom smart contracts or writing deployment scripts.
- Modifying the base `Dockerfile`.

---

## Acceptance Criteria
- [ ] `docker-compose.yml` includes an active, tested `stellar-quickstart` service definition with Soroban RPC enabled.
- [ ] Port `8000` is exposed and reachable from the host machine (`http://localhost:8000/soroban/rpc`).
- [ ] The `soroban-builder` and `stellar-quickstart` services share an internal network and can communicate via service name.
- [ ] A dedicated section in `README.md` explains how to start the RPC container and register the network with `stellar network add`.
- [ ] Pull request follows conventional commit guidelines and passes all CI checks.
