FROM ghcr.io/graalvm/jdk-community:25

WORKDIR /
COPY . /app

ENTRYPOINT ["sh", "-c", "ls -lah /config/mods; exec java --enable-native-access=ALL-UNNAMED --add-opens=java.base/java.lang=ALL-UNNAMED --add-opens=java.base/java.util=ALL-UNNAMED -jar /app/server.jar"]
