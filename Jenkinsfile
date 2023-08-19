pipeline {
    agent any
    environment {
        DOCKER_REGISTRY_CREDENTIALS = credentials('docker-hub')
    }
    stages{
        stage ('Clone') {
            steps {
                git 'https://github.com/TinhThan/22424018.git'
            }
        }
        stage ('deploy docker') {
            steps {
              withCredentials([usernamePassword(credentialsId: 'docker-hub', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
                    withDockerRegistry([credentialsId: 'docker-hub', url: 'https://index.docker.io/v1/']) {
                        sh "echo $DOCKER_PASSWORD | docker login -u $DOCKER_USERNAME --password-stdin"
                        sh 'docker build -t 22424018/tinh.than .'
                        sh 'docker push 22424018/tinh.than'
                    }
                }
            }
        }
    }
}
