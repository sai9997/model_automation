pipeline {

    parameters {
        booleanParam(name: 'autoApprove', defaultValue: false, description: 'Automatically run apply after generating plan?')
    } 
    environment {
        AWS_ACCESS_KEY_ID    = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }

   agent  any
    stages {
        stage('checkout') {
            steps {
                 script{
                        dir("terraform")
                        {
                            git branch: 'main', credentialsId: 'GitUserNamePassword', url: 'https://github.com/sai9997/model_automation.git'
                        }
                    }
                }
            }

        stage('Plan') {
            steps {
                sh 'pwd;cd model_automation/ ; terraform init'
                sh "pwd;cd model_automation/ ; terraform plan -out tfplan"
                sh 'pwd;cd model_automation/ ; terraform show -no-color tfplan > tfplan.txt'
            }
        }
        stage('Approval') {
           when {
               not {
                   equals expected: true, actual: params.autoApprove
               }
           }

           steps {
               script {
                    def plan = readFile 'terraform/tfplan.txt'
                    input message: "Do you want to apply the plan?",
                    parameters: [text(name: 'Plan', description: 'Please review the plan', defaultValue: plan)]
               }
           }
       }

        stage('Apply') {
            steps {
                sh "pwd;cd model_automation/ ; terraform apply -input=false tfplan"
            }
        }
    }

  }
