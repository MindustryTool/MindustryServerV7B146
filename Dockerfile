FROM eclipse-temurin:21-jre-alpine

WORKDIR /app
COPY server.jar .

ENTRYPOINT [
  "java",
  "-XX:+UseSerialGC",
  "-XX:MaxRAMPercentage=60",
  "-XX:InitialRAMPercentage=10",
  "-XX:MinRAMPercentage=10",
  "-XX:+UseContainerSupport",
  "-jar",
  "server.jar"
]
