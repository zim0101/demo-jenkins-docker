pipeline {
    agent any
    stages {
        stage('test-python-3.11.4') {
            agent {
                docker {
                    image 'python:3.11.4-alpine'
                }
            }
            steps {
                sh 'pip install .'
                sh 'pytest'
            }
        }
        stage('test-python-3.10.7') {
            agent {
                docker {
                    image 'python:3.10.7-alpine'
                }
            }
            steps {
                sh 'pip install .'
                sh 'pytest'
            }
        }
        stage('build') {
            agent {
                docker {
                    image 'python:3.9.17-alpine'
                }
            }
            steps {
                sh 'pip install .'
                sh 'pytest'
            }
        }
    }
}