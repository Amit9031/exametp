pipeline{
  agent any
  stages{
    stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Amit9031/pythonexam.git'
            }
        }

    stage('build'){
      steps{
        sh 'docker build -t pythonapp:latest . '
      }
    }
    stage('run'){
      steps{
        sh '''
        docker stop pythonapp || true
        docker rm pythonapp || true

          docker run -d -p 3000:3000 -e exam=etp --name pythonapp pythonapp:latest
        '''
      }
    }
     
  }
}
