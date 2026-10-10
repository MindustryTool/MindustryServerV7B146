FROM ghcr.io/graalvm/jdk-community:21

COPY . /app

ENTRYPOINT ["java", "-jar", "/app/server.jar"]
