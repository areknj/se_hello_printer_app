.PHONY: test

deps:

	pip install -r requirements.txt ; \
	pip install -r test_requirments.txt

lint:
	flake8 hello_world test

test:
	PYTHONPATH=. py.test
