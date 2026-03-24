# Usamos una imagen oficial de Tomcat
FROM tomcat:9.0-jdk21-openjdk

# Borramos las apps por defecto de Tomcat para limpiar
RUN rm -rf /usr/local/tomcat/webapps/*

# Copiamos tu archivo .war a la carpeta de despliegue de Tomcat
# Cambia "tu-proyecto.war" por el nombre real de tu archivo
COPY E-Tramite-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Exponemos el puerto 8080 que es el que usa Tomcat
EXPOSE 8080

# Comando para arrancar Tomcat
CMD ["catalina.sh", "run"]
