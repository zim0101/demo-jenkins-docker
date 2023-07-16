def runTest() {
    sh 'python3 --version'
    sh 'pip install .'
    sh 'pytest'
}

pipeline {

    agent any

    stages {
        stage('test-on-multi-python-version') {
            stages {
                stage('test-python-3.10') {
                    agent {
                        docker {
                            image 'ubuntu-python:3.10'
                        }
                    }
                    steps {
                        script {
                            runTest()
                        }
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
                        script {
                            runTest()
                        }
                    }
                    post {
                        cleanup {
                            cleanWs()
                        }
                    }
                }
            }
        }
    }
}