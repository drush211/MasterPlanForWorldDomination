install:
	./initial_setup

lint: markdownlint pylint

markdownlint:
	docker run -v `pwd`:/workspace wpengine/mdl /workspace

pylint:
	docker run -v `pwd`:/workspace wpengine/pylint /workspace