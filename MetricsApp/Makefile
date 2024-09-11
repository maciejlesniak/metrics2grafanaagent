artefact: build docker-image docker-push

build:
	gradle build
docker-image:
	docker build -t macieklesniak/demo-metrics-app:latest .
docker-push:
	docker image push macieklesniak/demo-metrics-app:latest

helm-build:
	helm package ./charts/metrics-app

helm-install:
	helm install -n ga demo-metrics-app ./demo-metrics-app-0.0.1.tgz

helm-delete:
	helm delete -n ga demo-metrics-app

clean:
	echo "Cleaning docker registry"
	docker container prune -f
	docker image prune -f
	echo "Delete demo app instances"
	helm delete -n ga demo-metrics-app
