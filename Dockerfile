# Use the official OpenJDK 21 runtime as the base image
FROM openjdk:21-jdk-slim

# Set the working directory inside the container
WORKDIR /

# Copy the JAR file into the container
COPY testing-0.0.1-SNAPSHOT.jar app.jar

# Expose the port your application listens on
EXPOSE 8080

# Command to run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]
