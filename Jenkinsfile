pipeline {
    agent { docker { image 'ruby' } }
    
    stages {
        stage('Clone') {
            steps {
                checkout scm
            }            
        }

        stage('Config') {
            steps {
                sh 'gem install bundler'
                sh 'bundle install'
            }	
		}

        stage('Test') {
			steps {
                sh 'cucumber'
            }
		}

        stage ('Cucumber Reports') {
            steps {
                cucumber buildStatus: "UNSTABLE",
                    fileIncludePattern: "**/report.json",
                    jsonReportDirectory: 'target'

            }

        }
    }
}