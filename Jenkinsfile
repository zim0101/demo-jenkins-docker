pipeline {
    agent any
    stages {
        stage('test-python-3.10.7') {
            agent {
                docker {
                    image 'ubuntu-python:3.10'
                }
            }
            steps {
                sh 'python3 --version'
                sh 'pip install .'
                sh 'pytest'
            }
            post {
                cleanup {
                    cleanWs()
                }
            }
        }
        stage('test-python:3.11.4') {
            agent {
                docker {
                    image 'ubuntu-python:3.11.4'
                }
            }
            steps {
                sh 'python3 --version'
                sh 'pip install .'
                sh 'pytest'
            }
            post {
                cleanup {
                    cleanWs()
                }
            }
        }
    }
}