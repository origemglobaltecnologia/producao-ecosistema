FROM eclipse-temurin:21-jdk
WORKDIR /app
COPY Clientes-0.0.1-SNAPSHOT.jar clientes.jar
# CORRIGIDO PARA REFLETIR A PORTA DA APLICAÇÃO
EXPOSE 8082
ENTRYPOINT ["java", "-jar", "clientes.jar"]
