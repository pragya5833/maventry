#! /bin/bash
echo "*********************************"
echo "Testing jar"
echo "*********************************"
docker run --rm -v /var/jenkins_home/workspace/pipelinetest/sample-app:/app -v /root/.m2 -w /app maven:3-alpine "$@"