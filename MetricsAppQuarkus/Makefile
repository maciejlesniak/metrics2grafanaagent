artefact: ../MetricsAppQuarkus2/build docker-image docker-push

build:
	./gradlew clean build --console=plain

docker-image:
	docker build -f src/main/docker/Dockerfile.jvm -t macieklesniak/demo-metrics-app:quarkus .

docker-push:
	docker image push macieklesniak/demo-metrics-app:quarkus

helm-install:
	helm install -n ga demo-app-quarkus ../charts/demo-metrics-app-0.0.1.tgz -f ./helm-overrides.yaml

helm-delete:
	helm delete -n ga demo-app-quarkus
