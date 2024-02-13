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
        
        stage('Build docker image'){
            steps{
                script{
                    withDockerContainer(image: 'openjdk:21', toolName: 'docker'){
                        sh "docker build -t fiqrimaulanaar/spring-boot-hello-world ."
                    }
                }
            }
        }
    }
}
