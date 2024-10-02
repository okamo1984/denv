#! /bin/bash

orb start

docker pull webdb/app &&
  docker rm -f "$(docker ps -a -q --filter ancestor=webdb/app)" webdb 2>/dev/null
docker run --name webdb -d \
  --restart=always \
  --add-host="host.docker.internal:host-gateway" \
  -v "$HOME"/.webdb:/usr/src/app/static/version \
  -v "$HOME"/.ssh:/root/.ssh:ro \
  -p 127.0.0.1:22071:22071 webdb/app
