artefact: build docker-image docker-push

build:
	./gradlew clean asciidoctor

docker-image:
	docker build -t macieklesniak/demo-metrics-app:docs .

docker-push:
	docker image push macieklesniak/demo-metrics-app:docs

helm-install:
	helm install -n ga demo-app-docs ../charts/demo-metrics-app-0.0.2.tgz -f ./helm-overrides.yaml

helm-delete:
	helm delete -n ga demo-app-spring
