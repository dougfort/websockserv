#!/bin/bash
set -euxo pipefail

docker run -p 1111:1111 -e WEBSOCKSERV_ADDR="0.0.0.0:1111" dougfort/websockserv:latest
