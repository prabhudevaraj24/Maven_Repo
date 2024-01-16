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
                bat "mvn clean package"
				
            }
            post{
			success echo "Archiving the artifacts"
			archiveArtifacts artifacts:'**/target/*.war'
			}
		
        } stage('Deploy to Tomcat'){
            steps{
                deploy adapters: [tomcat8(credentialsId: 'Tomcat_Cred', path: '', url: 'http://localhost:8081/')], contextPath: 'C:\\Rockwell\\PO10.4.107225\\tomcat\\webapps', war: '**/*.war'
            }
            
        }
    }
  post{
	failure {
	echo "Email sent for failure"
	}
	}
}
