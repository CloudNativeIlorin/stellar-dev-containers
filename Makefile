# =============================================================================
# Makefile - Developer Helpers for stellar-dev-containers
# Maintained by Cloud Native Ilorin
# =============================================================================

.DEFAULT_GOAL := help

# Ensure all targets are marked as .PHONY
.PHONY: help build test shell clean

## help: Display this formatted help menu with available commands
help:
	@echo "Usage: make [target]"
	@echo ""
	@echo "Available Targets:"
	@echo "  build   Build the Docker image via docker compose build"
	@echo "  test    Verify stellar-cli installation inside the container"
	@echo "  shell   Launch an interactive /bin/bash session inside soroban-builder"
	@echo "  clean   Prune unused builder containers and dangling image layers"
	@echo "  help    Display this help menu"
	@echo ""

## build: Build the Docker image via docker compose build
build:
	docker compose build

## test: Run stellar --version inside the container to verify functionality
test:
	docker compose run --rm soroban-builder stellar --version

## shell: Launch an interactive /bin/bash session inside soroban-builder
shell:
	docker compose run --rm --entrypoint /bin/bash soroban-builder

## clean: Prune unused builder containers and dangling image layers
clean:
	docker compose down --remove-orphans
	docker image prune -f --filter "dangling=true"
