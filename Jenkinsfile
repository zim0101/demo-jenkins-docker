pipeline {

    agent any

    triggers {
        githubPush()
    }

    stages {
        stage('test-1') {
            when {
                branch 'main'
            }

            agent {
                docker {
                    image 'python:3.9.6'
                }
            }

            steps {
                sh 'pip install .'
                sh 'pytest'
            }
        }

        stage('test-2') {
            when {
                branch 'main'
            }

            agent {
                docker {
                    image 'python:3.11.1'
                }
            }

            steps {
                sh 'pip install .'
                sh 'pytest'
            }
        }
    }
}