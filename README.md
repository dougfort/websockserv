# websockserv
## websocket server

This is the gorilla websocket echo example server, with a Dockerfile
Used to create dougfort/websockserv:latest for testing connection upgrades

https://github.com/gorilla/websocket

## Setup:
1. clone this repository
2. run `./build.sh`, this will create deciphernow/websockserv:latest

## Test the Setup
1. run `./run.sh`, this will run the container
2. From a browser run `http://localhost:1111/` This will bring up a form with instructions
```bash
Click "Open" to create a connection to the server, "Send" to send a message to the server and "Close" to close the connection.
You can change the message and send multiple times.

```
## Test the proxy
The real test is to run this service behind a gm-proxy sidecar.
