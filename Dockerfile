FROM openjdk:21-jdk-slim

# Copie o arquivo JAR da sua aplicação para o container
ARG JAR_FILE=pipeline-1.0.1-SNAPSHOT.jar # Valor padrão
ARG FINAL_NAME
ENV JAR_FILE=${FINAL_NAME}

COPY target/${JAR_FILE}.jar app.jar

# Comando para executar a aplicação
ENTRYPOINT ["java", "-jar", "/app.jar"]