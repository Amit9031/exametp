pipeline{
  agent any
  stages{
    stage('build'){
      steps{
        echo "building the image"
        sh "docker build -t nodeapp:latest ."
      }
    }
    stage("running"){
      steps{
        echo "running the continer"
        sh 
        ...
        docker stop nodeapp || true
        docker rm nodeapp || true
        docker run -d -p 3000:3000 --name nodeapp -e etp=dev nodeapp:latest


        ...
      }
    }
  }

}