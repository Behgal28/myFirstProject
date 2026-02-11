# Docker Hub ke bajaye AWS Public ECR se image pull karein
FROM public.ecr.aws/amazoncorretto/amazoncorretto:17-al2-jdk

WORKDIR /app
COPY target/myFirstProject-*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]