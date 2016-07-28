#!/bin/bash

IMAGE=python-builder
USER=pablerass

docker login --username=$USER

echo "Building $IMAGE:latest"
docker build --tag $USER/$IMAGE:latest .
echo "Pushing $IMAGE:latest"
docker push $USER/$IMAGE:latest

for DIR in *.*; do
	if [ ! -d $DIR ]; then continue; fi
	echo "Building $IMAGE:$DIR"
	docker build --tag $USER/$IMAGE:$DIR $DIR
	echo "Pushing $IMAGE:$DIR"
	docker push $USER/$IMAGE:$DIR
done
