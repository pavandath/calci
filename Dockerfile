# Use a modern base image with Java 21
FROM eclipse-temurin:21-jdk

# Set working directory
WORKDIR /app

# Copy the JAR from GCS into the container
ADD https://storage.googleapis.com/pavan-gcs/calci/calculator.jar /app/calculator.jar

# Expose application port
EXPOSE 8081

# Run the application
CMD ["java", "-jar", "calculator.jar"]
