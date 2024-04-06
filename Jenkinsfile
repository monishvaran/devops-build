pipeline {
    agent any
    
    stages {
        stage('Build Image') {
            steps {
                script {
                    // Execute the build script
                    sh './build.sh'
                }
            }
        }
        stage('Push Image') {
            steps {
                script {
                        sh './deploy.sh'
                    
                }
            }
        }
    }
    
    post {
        success {
            echo 'Pipeline succeeded!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}

