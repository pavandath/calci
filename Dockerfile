FROM ubuntu:18.04

RUN apt update && apt install -y openjdk-17-jdk wget

# Download the JAR from the URL
RUN wget https://storage.googleapis.com/pavan-gcs/calci/calculator.jar -O calculator.jar
EXPOSE 8081

CMD ["java", "-jar", "calculator.jar"]
