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
                sh 'python3 --version'
                sh 'pip --version'
                sh 'python3 -m pip install --user virtualenv'
//                 sh 'pwd'
//                 sh 'ls -l'
//                 sh 'python3 -m venv env'
//                 sh ''
//                 sh 'pip install .'
            }
        }
    }
}