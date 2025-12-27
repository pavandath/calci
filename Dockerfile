FROM ubuntu:18.04
RUN apt update && apt install openjdk-17-jdk -y && apt install wget -y
RUN https://storage.googleapis.com/pavan-gcs/calci/calculator.jar
EXPOSE 8081
CMD ["java", "-jar", "calculator-0.0.1-SNAPSHOT.jar"]
