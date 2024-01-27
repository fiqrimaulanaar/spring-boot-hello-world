FROM openjdk:21
EXPOSE 5050
ADD target/spring-boot-hello-world.jar spring-boot-hello-world.jar
ENTRYPOINT ["java","-jar","/spring-boot-hello-world.jar"]