#!/bin/bash -e

DIRNAME=$(dirname "$0")


containerID=$(docker run --detach magnetikonline/buildnginx)
docker cp "$containerID:/root/build/nginx-1.10.2/nginx_1.10.2-1_amd64.deb" "$DIRNAME"
sleep 1
docker rm $containerID
