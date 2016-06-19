.PHONY: build run

dir = $(shell pwd)

build:
	docker build -t rpi-webserver .

run:
	echo "docker run --name torrent -d -p 8042:80 -v $(dir)/downloads:/downloads rpi-webserver"
