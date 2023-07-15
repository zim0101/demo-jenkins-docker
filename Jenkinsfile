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
                sh 'python3 -m venv env'
                sh 'source .env/bin/activate'
                sh 'pip install .'
                sh 'pytest'
            }
        }
    }
}