pipeline {
    agent any
    stages {
//         stage('test-python-3.10.7') {
//             agent {
//                 docker {
//                     image 'ubuntu-python:3.10'
//                 }
//             }
//             steps {
//                 sh 'python3 --version'
//                 sh 'pip install .'
//                 sh 'pytest'
//             }
//         }
        stage('test-python-3.9') {
            agent {
                docker {
                    image 'ubuntu-python:3.9'
                }
            }
            steps {
                sh 'python3 --version'
                sh 'pip install .'
                sh 'pytest'
            }
        }
    }
}