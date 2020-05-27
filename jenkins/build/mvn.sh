#! /bin/bash
echo "*********************************"
echo "building jar"
echo "*********************************"
WORKSPACE=/var/jenkins_home/workspace/pipelinejenkinsfile
sudo docker run --rm -v $WORKSPACE/sample-app:/app -v /root/.m2 -w /app maven:3-alpine "$@"