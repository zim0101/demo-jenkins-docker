pipeline {
    agent any
    stages {
        stage('test-python-3.10.7') {
            agent {
                docker {
                    image 'python:3.10.7-alpine'
                }
            }
            steps {
                sh 'pwd'
                sh 'ls -l'
                sh 'pip install .'
            }
        }
    }
}