all: clean lint build test

clean:
	echo TODO!!!

## Linting Section

MARKDOWN_LINTER := wpengine/mdl

markdownlint:
	docker run -v `pwd`:/workspace ${MARKDOWN_LINTER} /workspace

PYTHON_LINTER := wpengine/pylint

pylint:
	docker run -v `pwd`:/workspace ${PYTHON_LINTER} /workspace

pull-linters:
	docker pull ${MARKDOWN_LINTER}
	docker pull ${PYTHON_LINTER}

lint: pylint markdownlint

## Build Section

build:
	echo TODO!!!

## Test Section

test: unit-test integration-test system-test

unit-test:
	echo TODO!!!

integration-test:
	echo TODO!!!

system-test:
	echo TODO!!!

## General Section
