pipeline{
    agent any

    environment {
        DOCKERHUB_CREDENTIALS = credentials('fiqrimaulanaar-dockerhub')
    }

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
        
        stage('Build docker image'){
            steps{
                sh "docker build -t fiqrimaulanaar/spring-boot-hello-world ."
            }
        }

        stage('Push image to Docker Hub'){
            steps{
                sh "echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin"
                sh "docker push fiqrimaulanaar/spring-boot-hello-world"
            }
        }
    }
}