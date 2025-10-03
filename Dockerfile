# Etapa 1: Build (Maven)
FROM maven:3.9.6-eclipse-temurin-21 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# Etapa 2: Runtime (imagem final, leve)
FROM eclipse-temurin:21-jdk
WORKDIR /app
# Copia o jar gerado da etapa de build
COPY --from=build /app/target/Clientes-0.0.1-SNAPSHOT.jar clientes.jar

# Porta padrão do Spring Boot
EXPOSE 8080

# Comando de inicialização
ENTRYPOINT ["java", "-jar", "clientes.jar"]
