pipeline {
    
    agent any
    environment {
    
        DOCKER_HOST = 'tcp://docker:2376'
        DOCKER_TLS_VERIFY = '1'
        DOCKER_CERT_PATH = '/certs/client'
    
    }

    stages {
        stage('Build the docker image...') {
            steps {
                sh docker build -t ecommerce-app .
            }
        }
        stage('Running the docker image...') {
            steps {
                sh 'docker run -d -p 5000:4040 ecommerce-app'
            }
        }
        
    }
}