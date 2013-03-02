#!/usr/bin/env bash


# Run web server
./scripts/web-server.js &

# Run coffee compile in watch mode
coffee -w --compile --output js/ coffee/
