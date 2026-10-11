FROM ghcr.io/graalvm/jdk-community:25

COPY . /app

ENTRYPOINT ["java", "--enable-native-access=ALL-UNNAMED", "--add-opens=java.base/java.lang=ALL-UNNAMED", "--add-opens=java.base/java.util=ALL-UNNAMED", "-jar", "/app/server.jar"]
