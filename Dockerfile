FROM openjdk:11-jdk

COPY target/*.jar  /app-procject-full/app-procject-full.jar

WORKDIR /app-procject-full

EXPOSE 8080

CMD ["sh","-c","java -jar app-procject-full.jar"]