FROM ubuntu:18.04

# Install Java
RUN apt update && apt install -y openjdk-17-jdk

# Use ADD to pull the JAR from the public URL
ADD https://storage.googleapis.com/pavan-gcs/calci/calculator.jar /app/calculator.jar

WORKDIR /app
EXPOSE 8081

CMD ["java", "-jar", "calculator.jar"]
