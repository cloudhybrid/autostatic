pipeline {
    agent any
    parameters {
    choice(
        name: 'aws_region',
        choices: "us-east-1\nOption2",
        description: 'interesting stuff' )
    }
    stages {
        stage ('install terraform') {
            steps {
                sh "apt-get update"
                sh "mkdir -p /usr/local/terraform"
                sh "cd /usr/local/terraform; wget https://releases.hashicorp.com/terraform/0.10.7/terraform_0.10.7_linux_amd64.zip; unzip terraform_0.10.7_linux_amd64.zip; mv terraform /usr/local/bin/"
                sh "terraform --version"
            }
        }
        stage ('initialize terraform plan') {
            steps {
                withCredentials([string(credentialsId: 'AWS_SECRET_ACCESS_KEY', variable: 'AWS_SECRET_ACCESS_KEY')]) {
                    withCredentials([string(credentialsId: 'AWS_SECRET_ACCESS_KEY', variable: 'AWS_ACCESS_KEY_ID')]) {
                        sh "terraform plan"
                    }
                }
            }
        }
    }
}

