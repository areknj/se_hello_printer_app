.PHONY: test

SERVICE_NAME=hello-world-printer

deps:

	pip install -r requirements.txt ; \
	pip install -r test_requirments.txt

lint:
	flake8 hello_world test

test:
	PYTHONPATH=. py.test

docker_build:
		docker build -t $(SERVICE_NAME) .

docker_run: docker_build
			docker run \
			--name hello-world-printer-dev\
			-p 5000:5000 \
			-d $(SERVICE_NAME)
