pipeline {
    agent any
    stages{
        stage ('Clone') {
            steps {
                git 'https://github.com/TinhThan/22424018.git'
            }
        }
        stage('build docker') {
            steps {
                bat 'docker build -t 22424018/tinhl.than .'
                bat 'docker push 22424018/tinhl.than'
            }
        }
    }
}
