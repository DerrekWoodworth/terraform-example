pipeline {
    agent any

    stages {
        stage('Initalize') {
            steps {
                sh "terraform init"
            }
        }
        stage('Validate') {
            steps {
                sh 'terraform plan'
            }
        }
        stage('Deploy') {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
    }
}

