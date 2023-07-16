def runTest() {
    sh 'python3 --version'
    sh 'pip install .'
    sh 'pytest'
}

pipeline {
    agent any
    stages {
        stage('test-on-multi-python-version') {
            steps {
                script {
                    def pythonVersions = ['3.10.7', '3.11.4']
                    pythonVersions.each { version ->
                        stage("test-python-${version}") {
                            agent {
                                docker {
                                    image "ubuntu-python:${version}"
                                }
                            }
                            steps {
                                runTest()
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
    }
}
// pipeline {
//
//     agent any
//
//     stages {
//         stage('test-on-multi-python-version') {
//             stages {
//                 stage('test-python-3.10') {
//                     agent {
//                         docker {
//                             image 'ubuntu-python:3.10'
//                         }
//                     }
//                     steps {
//                         script {
//                             runTest()
//                         }
//                     }
//                     post {
//                         cleanup {
//                             cleanWs()
//                         }
//                     }
//                 }
//                 stage('test-python:3.11.4') {
//                     agent {
//                         docker {
//                             image 'ubuntu-python:3.11.4'
//                         }
//                     }
//                     steps {
//                         script {
//                             runTest()
//                         }
//                     }
//                     post {
//                         cleanup {
//                             cleanWs()
//                         }
//                     }
//                 }
//             }
//         }
//     }
// }