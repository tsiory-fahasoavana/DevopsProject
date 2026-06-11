pipeline {
    agent {
        docker {
            image 'python:3.13-slim'
        }
    }

    stages {
        stage('Test') {
            steps {
                sh 'pip install -r requirements.txt'
                sh 'python test.py'
            }
        }
    }
}
