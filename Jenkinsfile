pipeline{
    agent any
    stages{
        stage('SCM Checkout'){
            steps{ 
                git 'https://github.com/Grras007/ntt-latest'
            }
        }
        stage('Terraform init'){
            steps{
                sh 'ansible-playbook deploy.yaml -e env=staging -e operation=init'
            }
        }
        stage('Terraform Plan'){
            steps{
                sh 'ansible-playbook deploy.yaml -e env=staging -e operation=create-plan'
            }
        }
        stage('Terraform Apply'){
            steps{
                sh 'ansible-playbook deploy.yaml -e env=staging -e operation=create'
            }
        }
    }
}
