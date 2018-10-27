pipeline {
    options {
    	buildDiscarder(logRotator(artifactDaysToKeepStr: '30', artifactNumToKeepStr: '5', daysToKeepStr: '30', numToKeepStr: '5'))
    }

    agent {
              kubernetes {
                 
                defaultContainer 'jnlp'
                  yaml """
  apiVersion: v1
  kind: Pod
  metadata:
    labels:
      jenkins: jenkins-pipeline
  spec:
    containers:
    - name: jnlp
      image: jnlp-slave:3.23-1-alpine
      imagePullPolicy: IfNotPresent
      ttyEnabled: true
    - name: maven
      image: maven:3.5.2-jdk-8
      imagePullPolicy: IfNotPresent
      command:
      - cat
      tty: true
    securityContext:
      runAsUser: 0
  """
              }
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
        stage('Unit Test') {
            steps{ 
                container('maven'){
                    sh '''
                        mvn clean
                    '''
                }
            }
        }
    }
}
