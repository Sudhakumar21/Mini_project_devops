pipeline {
    
    agent any

    stages {
        stage('Build the docker image...') {
            steps {
                sh 'docker build -t ecommerce-app:1 .'
            }
        } 
        stage('Running the docker image...') {
            steps {
                sh 'docker run -d -p 5000:4040 ecommerce-app:1'
            }
        } 
        
    }
}