# Use OpenJDK 21 as base
FROM openjdk:21-jdk

# Set working directory
WORKDIR /app

# Copy JAR dynamically (workflow will ensure the JAR is in ./docker_app folder)
COPY docker_app/*.jar app.jar

# Expose the app port
EXPOSE 8084

# Run Spring Boot app
ENTRYPOINT ["java","-jar","/app/app.jar","--server.port=8084","--server.address=0.0.0.0"]
