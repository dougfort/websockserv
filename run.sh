#!/bin/bash
set -euxo pipefail

docker run -p 1111:1111 deciphernow/websockserv:latest
