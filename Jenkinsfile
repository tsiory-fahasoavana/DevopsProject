pipeline {
    agent any

    stages {

        stage('Test') {
            steps {
                sh 'python3 --version'
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
