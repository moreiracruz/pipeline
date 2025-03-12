# Use uma imagem base do Java 21
FROM openjdk:21-jdk-slim

# Exponha a porta da sua aplicação
EXPOSE 8080

# Copie o arquivo JAR da sua aplicação para o container
ARG JAR_FILE=github-1.0.0.jar
COPY target/${JAR_FILE} app.jar

# Comando para executar a aplicação
ENTRYPOINT ["java","-jar","/app.jar"]