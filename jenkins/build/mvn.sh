#! /bin/bash
echo "*********************************"
echo "building jar"
echo "*********************************"
WORKSPACE=/var/jenkins_home/workspace/pipelinetest
docker run -v $WORKSPACE/sample-app:/app -v /root/.m2:/root/.m2 -w /app maven:3-alpine "$@"
#docker run --rm -v /var/jenkins_home/workspace/pipelinetest/sample-app:/app -v /root/.m2:/root/.m2 -w /app maven:3-alpine mvn -B -DskipTests clean package
#docker run --rm -v /home/shav/Desktop/pipeline/sample-app:/app -v /root/.m2:/root/.m2 -w /app maven:3-alpine mvn -B -DskipTests clean package