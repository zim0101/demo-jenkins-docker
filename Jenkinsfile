def pythonVersions = ["3.10.7", "3.11.4"]

def testStage(String pythonVersion) {
    stage("test-python-${pythonVersion}") {
        steps {
            echo "Running tests for Python ${pythonVersion}"
            sh 'python3 --version'
            sh 'pip install .'
            sh 'pytest'
        }
    }
}

pipeline {
    agent any
    stages {
        stage('Test Python Versions') {
            steps {
                script {
                    for (def pythonVersion in pythonVersions) {
                        build testStage(pythonVersion)
                    }
                }
            }
        }
    }
}

// pipeline {
//     agent any
//     stages {
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
//         stage('test-python:3.11.4') {
//             agent {
//                 docker {
//                     image 'ubuntu-python:3.11.4'
//                 }
//             }
//             steps {
//                 sh 'python3 --version'
//                 sh 'pip install .'
//                 sh 'pytest'
//             }
//         }
//     }
// }