FROM eclipse-temurin:21-jdk
WORKDIR /app
COPY target/Clientes-0.0.1-SNAPSHOT.jar clientes.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "clientes.jar"]
