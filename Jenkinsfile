pipeline {
    agent any
    stages{
        stage ('Clone') {
            steps {
                git 'https://github.com/TinhThan/22424018.git'
            }
        }
        stage ('deploy docker') {
            steps {
               withDockerRegistry(credentialsId: 'docker-hub', url: 'https://index.docker.io/v1/') {
                    sh 'docker build -t 22424018/tinhl.than .'
                    sh 'docker push 22424018/tinhl.than'
                }
            }
        }
    }
}