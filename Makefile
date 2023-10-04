# !!! Only for contributors & maintainers !!!
# The commands in this file are only necessary to maintain the repository examples
# Each example project in `./examples` contains its own Makefile with specific
# commands for it.

project_name = melange-examples

DUNE = opam exec -- dune

.DEFAULT_GOAL := help

.PHONY: help
help: ## Print this help message
	@echo "List of available make commands";
	@echo "";
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2}';
	@echo "";

.PHONY: create-switch
create-switch: ## Create opam switch
	opam switch create . 5.1.0 -y --deps-only

.PHONY: init
init: create-switch install ## Configure everything to develop this repository in local

.PHONY: install
install: ## Install development dependencies
	make -C examples/1-node install
	make -C examples/2-react install

.PHONY: build
build: ## Build all examples
	make -C examples/1-node build
	make -C examples/2-react build
