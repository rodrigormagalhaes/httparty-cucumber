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
        }
    }
    
    post('Report') {
        always {
            cucumber buildStatus: "UNSTABLE",
                    fileIncludePattern: "**/report.json",
                    jsonReportDirectory: '.'
            
            cleanWs()
        }
    }
}