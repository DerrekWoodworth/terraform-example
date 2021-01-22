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
                echo 'terraform apply --auto-approve'
            }
        }
    }
}

