IMAGE_NAME=adminerevo
IMAGE_TAG=4.8.1

export DOCKER_BUILDKIT=1

.PHONY: build
build:
	docker buildx build --tag $(IMAGE_NAME):$(IMAGE_TAG) .

.PHONY: run
run:
	@if docker image inspect $(IMAGE_NAME):$(IMAGE_TAG) > /dev/null 2>&1; then \
		echo "Running container"; \
		docker run --name $(IMAGE_NAME) \
			--publish 8080:8080 \
			$(IMAGE_NAME):$(IMAGE_TAG); \
	else \
		echo "Image does not exist"; \
	fi

.PHONY: clean
clean:
	@if docker inspect $(IMAGE_NAME) > /dev/null 2>&1; then \
		echo "Removing container"; \
		docker rm -f $(IMAGE_NAME) || true; \
	else \
		echo "Container does not exist"; \
	fi

	@if docker image inspect $(IMAGE_NAME):$(IMAGE_TAG) > /dev/null 2>&1; then \
		echo "Removing image"; \
		docker rmi $(IMAGE_NAME):$(IMAGE_TAG) || true; \
	else \
		echo "Image does not exist"; \
	fi
