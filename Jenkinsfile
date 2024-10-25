pipeline {
    agent any

    stages {    
        sage(){
            steps{
                bat 'git clone https://github.com/Samson2343/2343_ISA2.git'
                bar 'cd 2343_ISA2/'
            }
        }    
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
