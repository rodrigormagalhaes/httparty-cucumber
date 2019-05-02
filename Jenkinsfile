pipeline {
    agent { docker { image 'ruby' } }
    
    stages {
        stage('Start Notification') {
            steps {
                slackSend message: "Iniciando testes automatizados API. JOB: <${env.JOB_NAME}>. Branch <${env.GIT_BRANCH}> :pray:"
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
            slackSend color:"good", message: "Testes finalizados com sucesso! <${env.BUILD_URL}> :sunglasses:"
        }

        failure {
            slackSend color:"danger", message: "Testes finalizados com erro! <${env.BUILD_URL}> :rage:"
        }
    }
}