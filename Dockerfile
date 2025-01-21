# Use the official OpenJDK 21 image as a base
FROM openjdk:21-jdk-slim

# Set working directory
WORKDIR /app

# Copy the Maven build artifact
COPY target/devops-integration.jar app.jar


# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
