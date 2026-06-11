pipeline {
    agent any

    stages {

      stage('Test') {
            agent {
                docker {
                    image 'python:3.11'
                }
            }
            steps {
                sh 'python --version'
            }
        }

        stage('Deploy') {
            steps {
                sh 'kubectl apply -f ./kubernetes/deployment.yaml'
                sh 'kubectl apply -f ./kubernetes/service.yaml'
            }
        }

    }
}
