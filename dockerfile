# Utilisez une image de base Tomcat
FROM tomcat:9.0-jdk11-openjdk-slim

# Supprimez les applications par défaut de Tomcat qui ne sont pas nécessaires
RUN rm -rf /usr/local/tomcat/webapps/*

# Copiez le fichier WAR dans le conteneur Docker, dans le répertoire webapps de Tomcat
COPY target/spring5webapp-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Exposez le port que Tomcat utilise (généralement 8080)
EXPOSE 8080