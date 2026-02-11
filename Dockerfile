
# Java 17 runtime (AWS recommended)
FROM amazoncorretto:17

# App directory
WORKDIR /app

# Copy jar from target folder
COPY target/myFirstProject.jar myFirstProject.jar

# Expose Spring Boot port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "myFirstProject.jar"]