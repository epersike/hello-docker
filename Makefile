run-dev:
	docker run -d --mount type=bind,source=$(shell pwd)/src,target=/app -p 80:5000 --name hello-docker hello-docker:v1

compose-dev:
	docker compose -f docker-compose.dev.yml up -d

run-prod:
	docker run -d --name hello-docker hello-docker:v1

build:
	docker build -t hello-docker:v1 .

lsi:
	docker images

ps:
	docker ps -a