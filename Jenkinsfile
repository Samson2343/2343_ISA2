pipeline {
    agent any

    stages {    
         
        stage('Build docker image'){
            steps{
                bat 'docker build -t flaskapp .'
            }
        }
        stage('Delete container'){
            steps{
                 bat 'docker rm 2343'
            }
        }
        stage('Build and run container'){
            steps{
                bat 'docker run -d --name 2343 flaskapp'
            }
        }
    }
}
