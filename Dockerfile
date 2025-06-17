FROM eclipse-temurin:21-jre-alpine
# FROM eclipse-temurin:21-jdk

COPY . /app


# ENTRYPOINT ["java","-XX:+UseZGC","-XX:ErrorFile=/config/hs_err_pid%p.log","-XX:+HeapDumpOnOutOfMemoryError", "-XX:HeapDumpPath=/config/heap.hprof","-XX:NativeMemoryTracking=detail" ,"-jar", "/app/server-release.jar"]
ENTRYPOINT ["java","-XX:+CrashOnOutOfMemoryError", "-jar", "/app/server-release.jar"]
