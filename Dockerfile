FROM golang:1.13.1 AS builder

ENV GO111MODULE=on

WORKDIR /go/src/github.com/dougfort/websockserv/
ADD . /go/src/github.com/dougfort/websockserv/

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 \
    go build -mod=vendor -a -tags netgo -ldflags \
    -v -o websockserv server.go

# Final stage
FROM alpine:3.9

RUN apk update && apk upgrade && \
    apk add bash

WORKDIR /websockserv

COPY --from=builder /go/src/github.com/dougfort/websockserv/websockserv /usr/local/bin/websockserv
RUN chmod +x /usr/local/bin/websockserv

RUN chown -R 0:0 /websockserv && chgrp -R 0 /websockserv && chmod -R g=u /websockserv

USER 1000

CMD ["/usr/local/bin/websockserv"]
