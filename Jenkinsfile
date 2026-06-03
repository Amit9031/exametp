pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Amit9031/jen.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t myapp .'
            }
        }

        stage('Run Container') {
            steps {
                sh '''
                docker stop myapp || true
                docker rm myapp || true
                docker run --name myapp myapp
                '''
            }
        }
        stage("testing"){
      steps{
        echo "testing the application"
        sh "curl http://localhost:3000"
      }
    }
    }
}
