#! /bin/bash
echo "*********************************"
echo "Testing jar"
echo "*********************************"
sudo docker run --rm -v /var/jenkins_home/workspace/pipelinejenkinsfile/sample-app:/app -v /root/.m2 -w /app maven:3-alpine "$@"