REGISTRY := ghcr.io
OWNER := thombashi
REPO := python-ci
PYTHON_VERSION := 3.10
LOGIN_USER := thombashi
IMAGE_TAG := $(REGISTRY)/$(OWNER)/$(REPO):$(PYTHON_VERSION)


.PHONY: check-github-token
check-github-token:
ifndef GITHUB_TOKEN
	$(error require GITHUB_TOKEN)
endif

.PHONY: docker-login
docker-login: check-github-token
	@echo $(GITHUB_TOKEN) | docker login $(REGISTRY) -u $(LOGIN_USER) --password-stdin

.PHONY: docker-build
docker-build:
	@docker build -t $(IMAGE_TAG) --pull . --build-arg PYTHON_VERSION=$(PYTHON_VERSION)

.PHONY: docker-push
docker-push:
	@docker push $(IMAGE_TAG)

.PHONY: docker-run-it
docker-run-it:
	@docker run -it --rm --entrypoint "/bin/bash" $(IMAGE_TAG)
