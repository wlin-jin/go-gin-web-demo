BINARY=go-gin-web-demo
GO_OPTS=-mod=vendor
ENTRYPOINT=main.go

default: build

build:
	GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build  ${GO_OPTS} -o ${BINARY}

deps:
	go mod tidy && go mod vendor


.PHONY: deps build