# Usamos Java 21 directamente (sin instalar Tomcat aparte)
FROM openjdk:21-jdk-slim

# Copiamos tu archivo .war (que ya tiene su propio Tomcat dentro)
COPY ROOT.war app.war

# Exponemos el puerto que Railway espera
EXPOSE 8080

# Ejecutamos la aplicación como un ejecutable directo
ENTRYPOINT ["java", "-jar", "app.war"]