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
                    // Log in to Docker Hub
                    withDockerRegistry(url: 'https://index.docker.io/v1/') {
                        // Execute the deploy script to push the image
                        sh './deploy.sh'
                    }
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

