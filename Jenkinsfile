pipeline {
    agent any
    stages {
        stage ('build terraform code') {
            steps {
                terraform plan
            }
        }
    }
}