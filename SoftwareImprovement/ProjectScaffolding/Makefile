all: clean lint build test

clean:
	echo TODO!!!

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

build:
	echo TODO!!!

test:
	echo TODO!!!