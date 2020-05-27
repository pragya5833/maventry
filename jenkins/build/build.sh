#! /bin/bash
#copy new jar to build folder
WORKSPACE=/var/jenkins_home/workspace/pipelinejenkinsfile
cp -f $WORKSPACE/sample-app/target/*.jar  $WORKSPACE/jenkins/build
cd $WORKSPACE/jenkins/build
sudo docker-compose build