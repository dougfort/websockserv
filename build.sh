#!/bin/bash
set -euxo pipefail

docker build -t dougfort/websockserv:latest -f Dockerfile .
