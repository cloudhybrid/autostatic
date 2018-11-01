pipeline {
    agent any
    stages {
        stage ('build terraform code') {
            steps {
                apt-get update && apt-get -y --force-yes install wget vim git unzip gettext
                cd /usr/local/terraform
                wget https://releases.hashicorp.com/terraform/0.10.7/terraform_0.10.7_linux_amd64.zip && unzip terraform_0.10.7_linux_amd64.zip
                export AWS_SECRET_ACCESS_KEY=WSld+mD8vDtX42M1mUNMFnRq6lxlcQD7gar8S9b5
                export AWS_ACCESS_KEY_ID=AKIAJHYY6427SKIBNACQ
                export AWS_REGION=us-east-1
                terraform plan
            }
        }
    }
}