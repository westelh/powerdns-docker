#!/bin/bash
set -ex

VERSION="4.7.3"
ARCH="linux/amd64,linux/arm64"

docker buildx build --platform=$ARCH -t westelh/pdns-auth:$VERSION --push -f pdns.git/Dockerfile-auth pdns.git/
docker tag westelh/pdns-auth:$VERSION westelh/pdns-auth:latest
docker push westelh/pdns-auth:latest
