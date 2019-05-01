pipeline {
    agent { docker { image 'ruby' } }
    
    stages {
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
            slackSend color:"green", message: "Teste finalizado com sucesso!" 
        }

        failure {
            slackSend color:"red", message: "Teste finalizado com erro!" 
        }
    }
}