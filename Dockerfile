FROM gradle:7-jammy

LABEL descripion="Simple Java Spring application with one endpoint - GET /greetings"
LABEL author="Martins T."

WORKDIR /hello-app
COPY build.gradle .
COPY src src 
RUN gradle build

EXPOSE 8080

CMD ["java", "-jar", "build/libs/hello-app-0.0.1-SNAPSHOT.jar"]

# 1. Build aplication using `gradle build`
# 2. Run `java -jar build/libs/hello-app-0.0.1-SNAPSHOT.jar`