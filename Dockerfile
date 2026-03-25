# Usamos Tomcat 10.1 que es el compatible con Spring Boot 3
FROM tomcat:10.1-jdk21-openjdk-slim

# Borramos las aplicaciones que trae Tomcat por defecto para que no estorben
RUN rm -rf /usr/local/tomcat/webapps/*

# Copiamos tu archivo .war generado con Maven (asegúrate que se llame ROOT.war)
COPY ROOT.war /usr/local/tomcat/webapps/ROOT.war

# Exponemos el puerto estándar
EXPOSE 8080

# Comando para arrancar el servidor
CMD ["catalina.sh", "run"]
