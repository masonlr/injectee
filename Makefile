REPO = registry.gitlab.com/quaisr/commons
NAME = injectee

TAG = v0.1.0

build:
	docker build -t ${REPO}/${NAME}:${TAG} -t ${REPO}/${NAME}:latest .

push:
	docker build -t ${REPO}/${NAME}:${TAG} -t ${REPO}/${NAME}:latest .
	@echo "INFO: Pushing to container registry."
	@docker push ${REPO}/${NAME}:${TAG} || echo 'ERROR: Please log in to registry using "docker login registry.gitlab.com".'
	@docker push ${REPO}/${NAME}:latest || echo 'ERROR: Please log in to registry using "docker login registry.gitlab.com".'

.PHONY: build push
