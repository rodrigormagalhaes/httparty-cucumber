pipeline {
    agent { docker { image 'ruby' } }
    
    stages {
        stage('Config') {
            steps {
                sh 'npm install'
            }	
		}

        stage('Test') {
            steps {
                sh 'npm test'
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
} 