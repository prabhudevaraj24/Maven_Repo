pipeline {
    agent any
    tools{
        
        maven 'MAVEN_HOME'
    }

    stages {
        stage('Get Code from SCM') {
            steps {
                //git "https://github.com/prabhudevaraj24/Maven_Repo/tree/main"
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'git-pass', url: 'https://github.com/prabhudevaraj24/Maven_Repo.git']])
            }
        }
		stage ('Compile'){
		 steps {
                bat "mvn compile"
				}
		}
		stage ('Test'){
		 steps {
                bat "mvn test"
				}
		}
        stage('Build'){
            steps{
                bat "mvn package"
				
            }
		
        }
    }
  post{
	failure {
	echo "Email sent for failure"
	}
	}
}
