FROM openjdk:21-jdk-slim as builder
​WORKDIR /app
COPY clientes.jar app.jar
​FROM openjdk:21-jre-slim
​WORKDIR /app
COPY --from=builder /app/app.jar .
​EXPOSE 8082
​ENTRYPOINT ["java", "-jar", "app.jar"]
