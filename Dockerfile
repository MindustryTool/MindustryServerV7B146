FROM openjdk:8-jre-alpine

COPY . /app

ENTRYPOINT ["java","-Xmx1024m","-XX:ErrorFile=/config/hs_err_pid%p.log","-XX:+HeapDumpOnOutOfMemoryError", "-XX:HeapDumpPath=/config/heap.hprof", "-XX:NativeMemoryTracking=detail", "-XX:+UnlockDiagnosticVMOptions" ,"-jar", "/app/server-release.jar"]
