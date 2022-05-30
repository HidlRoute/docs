VIRTUAL_ENV_PATH=venv
SKIP_VENV="${NO_VENV}"

SHELL := /bin/bash

SRC_ROOT := ./src/hidlroute
BUILDER_DOCKER_TAG := hidlroute-docs-builder
VERSION := 0.0.1

.DEFAULT_GOAL := pre_commit

pre_commit: build
setup: deps


build: clean
	@( \
	   set -e; \
	   echo "Building docs"; \
	   ./mkdocs build; \
       echo "DONE"; \
  )


clean:
	@(rm -rf site)

deploy:
	@( \
       set -e; \
       ./mike deploy $(VERSION) latest; \
       \
       echo "DONE: deploy"; \
    )

serve:
	@( echo "Site will be available at http://localhost:8325/"; ./mkdocs serve -a 0.0.0.0:8000; )

deps:
	@( \
		echo "Building docker image for compiling docs..."; \
		docker build -t $(BUILDER_DOCKER_TAG) . ; \
		echo "DONE. Builder image tag is: $(BUILDER_DOCKER_TAG)"; \
	)

