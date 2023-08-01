@Library('demo-jenkins-shared-library') _

pipeline {

    agent any

    stages {
        stage('tests') {
            stages {
                stage('test-on-dynamic-docker-image') {
                    steps {
                        script {
                            def items = ['ubuntu-python:3.10', 'ubuntu-python:3.11.4']
                            for (def item : items) {
                                docker.image(item).inside {
                                    stage("Processing ${item}") {
                                        runPythonTest()
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}