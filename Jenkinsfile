pipeline {
    agent any
    
    stages {
        stage('Build Image') {
            steps {
                script {
                    // Execute the build script
                    sh 'chmod +x build.sh'
                    sh './build.sh'
                }
            }
        }
        stage('Push Image') {
            steps {
                script {
                        sh 'chmod +x deploy.sh'
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

