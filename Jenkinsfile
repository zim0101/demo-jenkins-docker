pipeline {

    agent any

    stages {
        stage('test-1') {
            agent {
                docker {
                    label 'docker-python-39'
                }
            }
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