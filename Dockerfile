echo -e 'FROM openjdk:21-jdk-slim as builder\n\nWORKDIR /app\nCOPY clientes.jar app.jar\n\nFROM openjdk:21-jdk-headless\n\nWORKDIR /app\nCOPY --from=builder /app/app.jar .\n\nEXPOSE 8082\n\nENTRYPOINT ["java", "-jar", "app.jar"]' > Dockerfile

