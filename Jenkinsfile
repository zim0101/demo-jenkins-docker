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
                sh 'id'
                sh 'pip install .'
            }
        }
    }
}