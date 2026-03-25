# Usamos una imagen de Java moderna y estable
FROM eclipse-temurin:21-jre-jammy

# Establecemos la carpeta de trabajo
WORKDIR /app

# Copiamos tu archivo .war (asegúrate de que se llame ROOT.war en tu GitHub)
COPY ROOT.war app.war

# Le decimos a Railway por qué puerto escuchar
ENV PORT=8080
EXPOSE 8080

# Ejecutamos la aplicación
ENTRYPOINT ["java", "-jar", "app.war"]
