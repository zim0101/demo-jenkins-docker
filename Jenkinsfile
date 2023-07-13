pipeline {
    agent any
    stages {
        stage('build') {
            agent {
                docker {
                    label 'docker-python-agent'
                    image 'python:3.10.7-alpine'
                }
            }
            steps {
                sh 'python --version'
            }
        }
    }
}