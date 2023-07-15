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
                sh 'id'
                sh 'ls -l'
                sh 'pwd'
                sh 'python3 --version'
                sh 'pip --version'
//                 sh 'pwd'
//                 sh 'ls -l'
//                 sh 'python3 -m venv env'
//                 sh ''
//                 sh 'pip install .'
            }
        }
    }
}