clean:
	echo "Cleaning docker registry"
	docker container prune -f
	docker image prune -f

