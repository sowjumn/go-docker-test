## Build the Docker Image
`docker build -t my-go-docker .`

## Spin up a container/multiple containers

`docker run -p 8080:8080 --rm --name my-go-docker-run-1 my-go-docker`

`docker run -p 3000:8080 --rm --name my-go-docker-run-2 my-go-docker`
