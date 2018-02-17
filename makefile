.PHONY: test

SERVICE_NAME=hello-world-printer

deps:
	pip install -r requirements.txt ; \
	pip install -r test_requirements.txt

lint:
	flake8 hello_world test

test:
	PYTHONPATH=. py.test

test_smoke:
	curl -I --fail 127.0.0.1:5000

docker_build:
		docker build -t $(SERVICE_NAME) .

run:
	python main.py

docker_run: docker_build
			docker run \
			--name hello-world-printer-dev\
			-p 5000:5000 \
			-d $(SERVICE_NAME)

USERNAME=areknj
TAG=$(USERNAME)/hello-world-printer

docker_push: docker_build
			@docker login --username $(USERNAME) --password $${DOCKER_PASSWORD}; \
			docker tag hello-world-printer $(TAG); \
			docker push $(TAG); \
			docker logout;
