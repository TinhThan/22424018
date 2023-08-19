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
              withCredentials([string(credentialsId: 'docker-hub', variable: 'DOCKER_USERNAME'), 
                                password(credentialsId: 'docker-hub', variable: 'DOCKER_PASSWORD')]) {
                    withDockerRegistry([credentialsId: 'docker-hub', url: 'https://index.docker.io/v1/']) {
                        sh "docker login -u $DOCKER_USERNAME --password-stdin <<< $DOCKER_PASSWORD"
                        def customImage = docker.build("22424018/tinh.than")
                        customImage.push()
                    }
                }
            }
        }
    }
}
