#!/bin/bash
set -euxo pipefail

docker build -t deciphernow/websockserv:latest -f Dockerfile .
