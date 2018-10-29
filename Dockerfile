FROM golang:1.10

ENV GOPATH /go
ENV PROJ=$GOPATH/src/github.com/sowjumn/go-docker-test
ENV PATH=$GOPATH/bin:/usr/local/go/bin:$PROJ/bin:$PATH

RUN mkdir -p /src/github.com/sowjumn/go-docker-test

WORKDIR /src/github.com/sowjumn/go-docker-test

COPY ./server.go ./server.go

CMD go run server.go