pipeline {
  agent {
    docker {
      image 'vishant07/terru:v1'
    }
  }

  options {
      ansiColor('xterm')
  }
    parameters {
    choice(
        name: 'aws_region',
        choices: "us-east-1\nOption2",
        description: 'interesting stuff' )
    }
    stages {
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
