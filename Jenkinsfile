pipeline {
    agent {
        docker {
            image 'docker:stable'
            args '-v /var/run/docker.sock:/var/run/docker.sock'
        }
    }
    stages {
        stage('test-1') {
            when {
                branch 'main'
            }
            steps {
                script {
                    docker.image('python:3.9.6').inside {
                        sh 'pip install .'
                        sh 'pytest'
                    }
                }
            }
        }
        stage('test-2') {
            when {
                branch 'main'
            }
            steps {
                script {
                    docker.image('python:3.11.1').inside {
                        sh 'pip install .'
                        sh 'pytest'
                    }
                }
            }
        }
    }
}
