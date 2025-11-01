FROM eclipse-temurin:21-jre-alpine

COPY . /app

ENTRYPOINT ["java", "-jar", "/app/server.jar"]
