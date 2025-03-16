FROM openjdk:17-alpine
WORKDIR /app

COPY Lavalink.jar .
COPY application.yaml .
COPY plugins ./plugins

EXPOSE 2333
CMD ["java", "-jar", "Lavalink.jar"]
