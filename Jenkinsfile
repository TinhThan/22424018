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
                sh 'docker build -t 22424018/tinh.than .'
                sh 'docker push 22424018/tinh.than'
            }
        }
    }
}
