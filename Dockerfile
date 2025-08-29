FROM eclipse-temurin:17-jre-alpine

COPY . /app

ENTRYPOINT ["java", "-jar", "/app/server-release.jar"]
