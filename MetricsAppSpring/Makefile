artefact: build docker-image docker-push

build:
	./gradlew clean build

docker-image:
	docker build -t macieklesniak/demo-metrics-app:spring .

docker-push:
	docker image push macieklesniak/demo-metrics-app:spring

helm-install:
	helm install -n ga demo-app-spring ../charts/demo-metrics-app-0.0.1.tgz -f ./helm-overrides.yaml

helm-delete:
	helm delete -n ga demo-app-spring
