#!/bin/bash
set -euxo pipefail

go mod tidy
go mod vendor

docker build -t dougfort/websockserv:latest -f Dockerfile .
