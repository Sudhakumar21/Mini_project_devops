pipeline {
    
    agent any
    environment {
    
        DOCKER_HOST = 'tcp://docker:2376'
        DOCKER_TLS_VERIFY = '1'
        DOCKER_CERT_PATH = '/certs/client'
    
    }

    stages {
        stage('Git mapping...') {
            steps {
                git 'https://github.com/Sudhakumar21/Mini_project_devops.git'
            }
        }
        stage('Build the docker image...') {
            steps {
                docker build -t ecommerce-app:1 .
            }
        } 
        stage('Running the docker image...') {
            steps {
                sh 'docker run -d -p 5000:4040 ecommerce-app:1'
            }
        } 
        
    }
}