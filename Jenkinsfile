pipeline{
    agent any
    stages{
        stage('Build'){
            steps{
                sh '''
                    ./var/jenkins_home/workspace/pipelinejenkinsfile/jenkins/build/mvn.sh mvn -B -DskipTests clean package
                    ./var/jenkins_home/workspace/pipelinejenkinsfile/jenkins/build/build.sh
                '''
            }
        }
        stage('Test'){
            steps{
                sh './var/jenkins_home/workspace/pipelinejenkinsfile/jenkins/tests/mvn.sh mvn test'
            }

        }
        stage('Push'){
            steps{
                sh './var/jenkins_home/workspace/pipelinejenkinsfile/jenkins/push/push.sh'
            }

        }
        stage('Deploy'){
            steps{
                sh 'echo "deploying"'
            }
        }
    }
}