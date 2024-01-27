pipeline{
    agent any

    tools {
		jdk 'jdk'
        maven '3.9.5'
	}

    stages {
        stage('Build'){
            steps{
                sh "mvn clean install -DskipTests"
            }
        }

        stage('Test'){
            steps{
                sh "mvn test"
            }
        }
    }
}