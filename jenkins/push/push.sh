#! /bin/bash
echo "**********************"
echo "pushing image"
echo "**********************"
IMAGE="mavenproject"
docker login -u pragya5833 -p $PASS
docker tag $IMAGE:$BUILD_TAG pragya5833/$IMAGE:$BUILD_TAG
docker push pragya5833/$IMAGE:$BUILD_TAG