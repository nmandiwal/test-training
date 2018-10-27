pipeline {
    options {
    	buildDiscarder(logRotator(artifactDaysToKeepStr: '30', artifactNumToKeepStr: '5', daysToKeepStr: '30', numToKeepStr: '5'))
  		ansiColor('xterm')
  		timestamps()
    }
    
    stages {
        stage('Prepare') {
            steps{ 
            	sh '''
					hostname
			 		echo "Preparing build param"
			 		echo "${JOB_NAME}"
			 		env
				'''
			}
        }
    }
}
