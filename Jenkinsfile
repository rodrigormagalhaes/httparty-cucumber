pipeline {
    agent any

    options {
        skipDefaultCheckout(true)
        disableConcurrentBuilds()
    }

    stages {
        stage('Checkout') {
            steps {
                cleanWs()
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
                sh 'docker build -t httparty-cucumber .'
            }	
		}

        stage('Test') {
            steps {
                sh "docker run --rm httparty-cucumber"              
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
        // always {
        //     cleanWs()
        // }

        success {
            slackSend color:"good", message: "Testes finalizados com sucesso! <${env.BUILD_URL}> :pepeds:"
        }

        failure {
            slackSend color:"danger", message: "Testes finalizados com erro! <${env.BUILD_URL}> :rage:"
        }
    }
}
