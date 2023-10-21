// step0: After jenkins configuration. Create a pipeline(name new_pipeline) and click pipeline
// pipelink definition > pipeline script from SCM > Git > paste GitHub Repo http url   
// > assign github credential > change branch name to main > save
// 

pipeline {

    parameters {
        booleanParam(name: 'autoApprove', defaultValue: false, description: 'Automatically run apply after generating plan?')
    } 
// step1: Getting aws credentails from jenkins configuration
    environment {
        AWS_ACCESS_KEY_ID    = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }

   agent  any
    stages {
        stage('checkout') {
// step2: providing git barnch,credentails & repository url
// tip:jenkins > Dashborad > pipeline > pipeline syntax > sample step > git
// > paste github repo url > branch main > generate pipeline script
// you will get below link
            steps {
                 script{
                        dir("new_pipeline")
                        {
                            git branch: 'main', credentialsId: 'GitUserNamePassword', url: 'https://github.com/sai9997/model_automation.git'
                        }
                    }
                }
            }

        stage('Plan') {
// step3: providing terraform commonds and saves paln info in tfplan file
            steps {
                sh 'pwd;cd new_pipeline/ ; terraform init'
                sh "pwd;cd new_pipeline/ ; terraform plan -out tfplan"
                sh 'pwd;cd new_pipeline/ ; terraform show -no-color tfplan > tfplan.txt'
            }
        }
        stage('Approval') {
// step4: providing approval with autoapproval option
           when {
               not {
                   equals expected: true, actual: params.autoApprove
               }
           }

           steps {
// step5: code to display the terraform plan from tfplan file
               script {
                    def plan = readFile 'new_pipeline/tfplan.txt'
                    input message: "Do you want to apply the plan?",
                    parameters: [text(name: 'Plan', description: 'Please review the plan', defaultValue: plan)]
               }
           }
       }

        stage('Apply') {
// step6: Terraform command to apply changes in aws
            steps {
                sh "pwd;cd new_pipeline/ ; terraform apply -input=false tfplan"
            }
        }
    }

  }
