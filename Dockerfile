FROM amazoncorretto:17-al2-jdk
WORKDIR /app
# Wildcard use karein taaki exact version name ka issue na rahe
COPY target/myFirstProject-*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]