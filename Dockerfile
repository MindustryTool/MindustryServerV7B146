FROM ghcr.io/graalvm/jdk-community:25i4

COPY . /app

ENTRYPOINT ["java", "-jar", "/app/server.jar"]
