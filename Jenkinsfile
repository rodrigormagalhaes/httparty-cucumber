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
            try {
                steps {
                    sh 'cucumber'
                 }

            } catch (Exception e) {
                echo "failure"

            }          

		}

        stage ('Cucumber Reports') {
            steps {
                cucumber buildStatus: "UNSTABLE",
                    fileIncludePattern: "**/report.json",
                    jsonReportDirectory: '.'
            }
        }
    }
    
    post { 
        always { 
            cleanWs()
        }
    }
} 