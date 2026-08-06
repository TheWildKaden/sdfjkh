.DEFAULT_GOAL := help

ROKIT ?= rokit
LUNE ?= lune
DARKLUA ?= darklua
STYLUA ?= stylua
SELENE ?= selene

SRC_DIR := src
TESTS_DIR := tests
SCRIPTS_DIR := scripts

WAX_PROJECT := wax.project.json

BUILD_DIR := build
BUNDLE_FILE := $(BUILD_DIR)/bundled.luau
RELEASE_FILE := $(BUILD_DIR)/release.luau


.PHONY: help install format format-check lint test ci bundle release clean


help:
	@echo "Volcano Gen2:"
	@echo "  install        Install dependencies"
	@echo "  format         Format Luau files"
	@echo "  lint           Lint Luau files"
	@echo "  test           Run tests"
	@echo "  ci             Run validation"
	@echo "  bundle         Build bundle"
	@echo "  release        Create release file"
	@echo "  clean          Remove build files"


install:
	$(ROKIT) install


format:
	$(STYLUA) --syntax Luau \
		$(SRC_DIR) \
		$(TESTS_DIR) \
		$(SCRIPTS_DIR)


format-check:
	$(STYLUA) --syntax Luau --check \
		$(SRC_DIR) \
		$(TESTS_DIR) \
		$(SCRIPTS_DIR)


lint:
	$(SELENE) $(SRC_DIR) $(TESTS_DIR)


test:
	$(LUNE) run scripts/run-tests.luau


ci:
	$(MAKE) format-check
	$(MAKE) lint
	$(MAKE) test


bundle:
	mkdir -p $(BUILD_DIR)
	$(LUNE) run wax bundle \
		input=$(WAX_PROJECT) \
		output=$(BUNDLE_FILE) \
		minify=true


release: bundle
	$(DARKLUA) process \
		$(BUNDLE_FILE) \
		$(RELEASE_FILE)

	mv $(RELEASE_FILE) $(BUNDLE_FILE)


clean:
	rm -rf $(BUILD_DIR)
