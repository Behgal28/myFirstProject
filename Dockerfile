FROM openjdk:17
WORKDIR /app
# Pom.xml ke artifactId aur version ke mutabik naam update kiya
COPY ./target/myFirstProject-0.0.1-SNAPSHOT.jar /app/myFirstProject.jar
EXPOSE 8080
CMD ["java", "-jar", "myFirstProject.jar"]