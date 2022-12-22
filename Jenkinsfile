pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
    post {
        success {
            emailext(
                subject: "${env.JOB_NAME} na build [${env.BUILD_NUMBER}] foi deployado com sucesso :D",
                body: "Verifique a saída da console do Job ${env.JOB_NAME} em [${env.BUILD_URL}] ",
                to: "mateusassis2918@gmail.com"
            )
        }   
    }
}   