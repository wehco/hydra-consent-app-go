push: docker-build
	docker push wehco/consent:latest

docker-build: build
	docker build . -t wehco/consent:latest

build:
	GOOS=linux GOARCH=amd64 go build -o consent
