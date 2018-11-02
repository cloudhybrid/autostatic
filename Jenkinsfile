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
                sh "sudo apt-get update && apt-get -y --force-yes install wget vim git unzip gettext"
                sh "cd /usr/local/terraform"
                sh "wget https://releases.hashicorp.com/terraform/0.10.7/terraform_0.10.7_linux_amd64.zip && unzip terraform_0.10.7_linux_amd64.zip"
                sh "terraform --version"
            }
        }
        stage ('initialize terraform plan') {
            environment {
            AWS_DEFAULT_REGION = "${aws_region}"
        }
            steps {
                withCredentials([string(credentialsId: 'AWS_SECRET_ACCESS_KEY', variable: 'AWS_SECRET_ACCESS_KEY')]) {
                    withCredentials([string(credentialsId: 'AWS_ACCESS_KEY_ID', variable: 'AWS_ACCESS_KEY_ID')]) {
                        sh "terraform --version"
                    }
                }
            }
        }
    }
}
