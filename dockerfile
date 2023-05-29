# Utilisez une image de base Java (par exemple, openjdk)
FROM openjdk:8-jdk

# Définissez le répertoire de travail dans le conteneur Docker
WORKDIR /app

# Copiez le fichier JAR dans le conteneur Docker
COPY target/spring5webapp-0.0.1-SNAPSHOT.jar /app

# Exposez le port que votre application utilise (par exemple, 8080 pour une application Spring Boot)
EXPOSE 8080

# Définissez la commande pour exécuter votre application
CMD ["java", "-jar", "/app/spring5webapp-0.0.1-SNAPSHOT.jar"]