FROM openjdk:11-jdk

COPY target/*.jar  /app-procject-full/app-project-full.jar

WORKDIR /app-project-full

EXPOSE 8080

CMD ["sh","-c","java -jar app-project-full.jar"]