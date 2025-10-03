# 1. Fase de Build (Usa uma imagem Java leve para compilar ou apenas como base)
FROM openjdk:17-jdk-slim as builder

WORKDIR /app

# CORREÇÃO AQUI: Copia o JAR CLientes-0.0.1-SNAPSHOT.jar
COPY target/Clientes-0.0.1-SNAPSHOT.jar app.jar

# 2. Fase de Execução (Melhor Prática: Usa uma imagem JRE mais leve para rodar)
FROM openjdk:17-jre-slim

WORKDIR /app

# Copia o JAR da fase anterior para a fase de execução
COPY --from=builder /app/app.jar .

EXPOSE 8082

ENTRYPOINT ["java", "-jar", "app.jar"]

