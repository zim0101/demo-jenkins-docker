pipeline {
    agent any
    stages {
        stage('Test Python') {
            steps {
                script {
                    def pythonVersions = ['3.10.7', '3.11.4']

                    for (def version in pythonVersions) {
                        def pythonAgent = "ubuntu-python:${version}"
                        def pythonCommand = "python${version} --version"

                        stage("Test Python ${version}") {
                            agent {
                                docker {
                                    image pythonAgent
                                }
                            }
                            steps {
                                sh pythonCommand
                                sh 'pip install .'
                                sh 'pytest'
                            }
                        }
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