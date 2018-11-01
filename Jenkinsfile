pipeline {
    agent any
    stages {
        stage ('build terraform code') {
            steps {
                sh apt-get update && apt-get -y --force-yes install wget vim git unzip gettext
                sh cd /usr/local/terraform
                sh wget https://releases.hashicorp.com/terraform/0.10.7/terraform_0.10.7_linux_amd64.zip && unzip terraform_0.10.7_linux_amd64.zip
                sh export AWS_SECRET_ACCESS_KEY=WSld+mD8vDtX42M1mUNMFnRq6lxlcQD7gar8S9b5
                sh export AWS_ACCESS_KEY_ID=AKIAJHYY6427SKIBNACQ
                sh export AWS_REGION=us-east-1
                sh terraform plan
            }
        }
    }
}