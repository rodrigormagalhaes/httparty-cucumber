pipeline {
    agent any

    options {
        skipDefaultCheckout(true)
        disableConcurrentBuilds()
    }

    stages {

        stage("Warm Up") {
            try {
                currentBuild.displayName = "#${env.BUILD_NUMBER} Running in ${branchName}..."
                sh "docker rmi qrcode-test || true"
            } catch (Exception e) {
                sendMsgToSlack("Problemas no Warm Up", ERROR_COLOR)
            }
        }
        
        stage('Clean workspace') {
            steps {
                cleanWs()
            }
        }

        stage('Checkout') {
            steps {
                checkout scm
                sh "git checkout ${env.REMOTE_BRANCH}"
            }
        }
        
        stage('Start Notification') {
            steps {
                slackSend message: "Iniciando testes automatizados API. Job: `${env.JOB_NAME}`. Branch `${env.REMOTE_BRANCH}` :pray:"
            }	
        }

        stage('Build image docker') {
            steps {
                sh 'cd docker-base-image && docker build --network=host -t httparty-cucumber .'
            }	
		}

        stage('Test') {
            steps {
                script {
                    pwd = sh(script:'pwd', returnStdout: true).trim() as String

                }                
                sh "docker run --network=host -v ${pwd}:/httparty-cucumber httparty-cucumber:latest -p json -p progress"              
            }

            post {
                always {
                    cucumber buildStatus: "UNSTABLE",
                        fileIncludePattern: "**/report.json",
                        jsonReportDirectory: '.'
                }
            }
        }
    }
    
    post {
        success {
            slackSend color:"good", message: "Testes finalizados com sucesso! <${env.BUILD_URL}> :pepeds:"
        }

        failure {
            slackSend color:"danger", message: "Testes finalizados com erro! <${env.BUILD_URL}> :rage:"
        }
    }
}
