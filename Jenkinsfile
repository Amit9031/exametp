pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/Amit9031/exametp.git'
            }
        }

        stage('Build') {
            steps {
                sh 'docker build -t nodeapp:latest .'
            }
        }

        stage('Run') {
            steps {
                sh '''
                    docker stop nodeapp || true
                    docker rm nodeapp || true

                    docker run -d \
                    -p 3000:3000 \
                    -e exam=etp \
                    --name nodeapp \
                    nodeapp:latest
                '''
            }
        }

        stage('Testing') {
            steps {
                echo 'Testing the application'
                sh '''
                    sleep 5
                    curl http://localhost:3000
                '''
            }
        }

    }
}
