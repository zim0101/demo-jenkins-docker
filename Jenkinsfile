pipeline {
    agent any
    stages {
        stage('build') {
            agent {
                docker {
                    image 'python:3.10.7-alpine'
                }
            }
            steps {
                'pip install .'
            }
        }
    }
}