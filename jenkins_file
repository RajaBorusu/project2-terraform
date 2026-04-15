pipeline {
    agent any

    parameters {
        choice(name: 'action', choices: ['apply', 'destroy'], description: 'Terraform action')
    }

    stages {

        stage('code') {
            steps {
                git branch: 'main', url: 'https://github.com/RajaBorusu/project2-terraform.git'
            }
        }

        stage('init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('validate') {
            steps {
                sh 'terraform validate'
            }
        }

        stage('plan') {
            steps {
                sh 'terraform plan'
            }
        }

        stage('terraform Action') {
            steps {
                echo "terraform action from the parameter is -> ${action}"
                sh "terraform ${action} --auto-approve"
            }
        }
    }
}
