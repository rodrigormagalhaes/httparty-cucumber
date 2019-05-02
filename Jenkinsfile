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
            slackSend color:"good", message: "Teste finalizado com sucesso!", ${env.BUILD_URL}, icon_emoji: ":sunglasses:"
        }

        failure {
            slackSend color:"danger", message: "Teste finalizado com erro!", ${env.BUILD_URL}, icon_emoji: ":cold_sweat:"
        }
    }
}