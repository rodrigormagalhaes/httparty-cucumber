pipeline {
    agent { 
        docker { 
            image 'ruby' 
        } 
    }

    environment {
        env.BRANCH = env.REMOTE_BRANCH.startsWith
    }
    
    stages {
        stage('Checkout') {
            steps {
                checkout scm
                sh "git checkout ${env.BRANCH}"
            }
        }
        
        stage('Start Notification') {
            steps {
                slackSend message: "Iniciando testes automatizados API. Job: `${env.JOB_NAME}`. Branch `${env.GIT_BRANCH}` :pray:"
            }	
        }

        stage('Config') {
            steps {
                sh 'ruby -v'
                sh 'gem install bundler'
                sh 'bundle install'
            }	
		}

        stage('Test') {
            steps {
                sh 'cucumber'                
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
        always {
            cleanWs()
        }

        success {
            slackSend color:"good", message: "Testes finalizados com sucesso! <${env.BUILD_URL}> :pepeds:"
        }

        failure {
            slackSend color:"danger", message: "Testes finalizados com erro! <${env.BUILD_URL}> :rage:"
        }
    }
}
