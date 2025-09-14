pipeline {
    agent any

    stages {
        stage('Code') {
            steps {
                 echo 'This is cloning the code '
                 git url: "https://github.com/khushiNgm/DevOps-Task.git", branch:"main"
                 echo 'Done Code cloning successful! '
            }
        }
        stage('Build') {
            steps {
                echo 'This is building the code'
                sh 'docker build -t node-app:latest .'
            }
        }  
        stage('Push to DockerHub') {
            steps {
                echo 'This is Pushing the img to docker hub'
                withCredentials([usernamePassword(
                credentialsId:'dockerHubCred',
                passwordVariable:"dockerHubPass",
                usernameVariable:"dockerHubUser")]){
                sh '''
                docker login -u $dockerHubUser -p $dockerHubPass
                docker tag node-app:latest $dockerHubUser/devops-task:latest
                docker push $dockerHubUser/devops-task:latest
                '''
                echo 'push successful'
            }
            }
        } 
       stage('Deploy') {
            steps {
                echo 'This is deployig the code'
                 sh '''
                docker pull $dockerHubUser/devops-task:latest
                docker compose down || true
                docker compose up -d --build
                '''
                echo 'successful deploy'
            }
        } 
    }
}
