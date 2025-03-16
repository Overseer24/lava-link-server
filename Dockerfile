FROM openjdk:17-alpine
WORKDIR /app

COPY Lavalink.jar .
COPY application.yml .
COPY plugins ./plugins

EXPOSE 2333
CMD ["java", "-jar", "Lavalink.jar"]
