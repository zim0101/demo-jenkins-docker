pipeline {

    agent {
        docker {
            image 'python:3.10.7-alpine'
        }
    }

    stages {
        stage('test-1') {
//             agent {
//                 docker {
//                     label 'docker-python-39'
//                 }
//             }
            steps {
                sh 'pip install .'
                sh 'pytest'
            }
        }
//
//         stage('test-2') {
//             agent {
//                 docker {
//                     label 'docker-python-39'
//                 }
//             }
//             steps {
//                 sh 'pip install .'
//                 sh 'pytest'
//             }
//         }
    }
}