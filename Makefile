include node.mk

SHELL := /bin/bash
.DEFAULT_GOAL := build

ESLINT := ./node_modules/.bin/eslint
PRETTIER := ./node_modules/.bin/prettier
JEST := ./node_modules/.bin/jest
TSC := ./node_modules/.bin/tsc

test-jest:
	@echo "Running jest..."
	@IS_TEST=1 $(JEST) --passWithNoTests --maxWorkers=1

test: test-jest

install:
	npm install

build:
	@echo "Building..."
	@rm -rf ./dist/
	@$(TSC) --declaration

publish:
	@echo "Building..."
	npm publish