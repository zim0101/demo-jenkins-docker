pipeline {

    agent {
        docker {
            image 'docker:dind'
            args '-v /var/run/docker.sock:/var/run/docker.sock'
        }
    }

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
                    image 'docker:dind'
                    args '-v /var/run/docker.sock:/var/run/docker.sock'
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
                    image 'docker:dind'
                    args '-v /var/run/docker.sock:/var/run/docker.sock'
                }
            }
            steps {
                sh 'pip install .'
                sh 'pytest'
            }
        }
    }
}