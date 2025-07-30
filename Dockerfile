FROM eclipse-temurin:17-jre-alpine

COPY . /app

# Các JVM flags mặc định
ENV JAVA_DEFAULT_OPTS="-XX:+UseContainerSupport -XX:MaxRAMPercentage=75.0 -XX:+CrashOnOutOfMemoryError"

# Dùng shell để gộp JAVA_OPTS và JAVA_DEFAULT_OPTS
ENTRYPOINT sh -c 'exec java $JAVA_DEFAULT_OPTS $JAVA_OPTS -jar /app/server-release.jar'
