FROM golang:1.17.7-alpine AS build

WORKDIR /github.com/fguisso/doryl-site-check

COPY . ./
RUN go mod download

RUN go build -o /doryld

ENTRYPOINT ["/doryld"]
