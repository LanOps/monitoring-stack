run:
	docker-compose -f resources/rancher/docker-compose.yml up -d
build:
	docker-compose -f resources/rancher/docker-compose.yml build
stop:
	docker-compose -f resources/rancher/docker-compose.yml stop
interactive:
	docker-compose -f resources/rancher/docker-compose.yml up