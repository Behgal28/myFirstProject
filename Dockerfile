# openjdk:17 ki jagah Amazon Corretto use karein
FROM amazoncorretto:17-al2-jdk

WORKDIR /app

# Ensure correct jar name (as per your pom.xml artifactId and version)
COPY ./target/myFirstProject-0.0.1-SNAPSHOT.jar /app/myFirstProject.jar

EXPOSE 8080

CMD ["java", "-jar", "myFirstProject.jar"]