.ONESHELL:
.PHONY: build run login stop
CONTAINER_NAME=hello-world
build:
	docker build ./ -t $(CONTAINER_NAME):latest

run:
	docker run $(CONTAINER_NAME)
#run:
	# docker run -itd --rm \
	# --name $(CONTAINER_NAME) \
	# --privileged
	# $(CONTAINER_NAME):latest

login:
	docker exec -it $(CONTAINER_NAME) /bin/bash

stop:
	docker stop $(CONTAINER_NAME)
