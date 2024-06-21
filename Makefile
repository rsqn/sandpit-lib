include node.mk

SHELL := /bin/bash
.DEFAULT_GOAL := build

ESLINT := ./node_modules/.bin/eslint
PRETTIER := ./node_modules/.bin/prettier
JEST := ./node_modules/.bin/jest
TSC := ./node_modules/.bin/tsc

test: 
	npm test

install:
	npm install

build: test
	@echo "Building..."
	@rm -rf ./dist/
	@$(TSC) --declaration

publish:
	@echo "Building..."
	npm publish