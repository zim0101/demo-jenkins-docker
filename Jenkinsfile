pipeline {
    agent any
    stages {
        stage('build') {
            agent {
                docker {
                    label 'python:3.10.7-alpine'
                    image 'python:3.10.7-alpine'
                }
            }
            steps {
                sh 'python --version'
            }
        }
    }
}