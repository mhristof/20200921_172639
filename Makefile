MAKEFLAGS += --warn-undefined-variables
SHELL := bash
.SHELLFLAGS := -eu -o pipefail -c
.DEFAULT_GOAL := help
.ONESHELL:

.PHONY:
help:           ## Show this help.
	@grep '.*:.*##' Makefile | grep -v grep  | sort | sed 's/:.* ##/:/g' | column -t -s:

IMAGE := 20200921_172639
build: .build
.PHONY: build

.build: Dockerfile
	docker build -t $(IMAGE) .
	touch .build

bash: .build
	docker run --rm -it $(IMAGE) /bin/bash
.PHONY: bash

run: .build
	## TODO: change your ~/code link
	docker run --rm -v $(PWD)/vimrc:/root/.vimrc -v ~/code:/root/code:ro -it $(IMAGE)
.PHONY: run

clean:
	rm -rf .build
.PHONY: clean

