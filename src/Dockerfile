# Use an official Java 8 base image
FROM openjdk:8-jdk

# Environment variables for Java
ENV JAVA_OPTS=""

# Update and install required tools
RUN apt update && apt install -y maven

# Make /app the default working directory
WORKDIR /app

# Add the .mvn/wrapper directory into the container
ADD .mvn/wrapper /app/.mvn/wrapper

# Add the mvnw and mvnw.cmd command files into the container
ADD mvnw /app
ADD mvnw.cmd /app

# Add the pom.xml, src files, and other necessary files into the container
ADD pom.xml /app
ADD src /app/src

# Build the project using Maven Wrapper
RUN chmod +x ./mvnw
RUN ./mvnw package

# Expose the port your application will run on
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "target/library-managment.jar"]