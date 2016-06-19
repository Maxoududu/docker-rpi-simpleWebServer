.PHONY: build run clean

dir = $(shell pwd)

build:
	docker build -t rpi-webserver .

run:
	@echo "Please run something like:"
	@echo "docker run --name webserver -d -p 9090:9090 -v $(dir)/downloads:/downloads rpi-webserver"

clean:
	docker rm webserver
	docker rmi rpi-webserver
