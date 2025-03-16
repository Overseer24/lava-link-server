FROM eclipse-temurin:latest
WORKDIR /app

# Install missing dependencies
RUN apt-get update && apt-get install -y libgcc-s1

COPY Lavalink.jar .
COPY application.yaml .
COPY plugins ./plugins

EXPOSE 2333
CMD ["java", "-jar", "Lavalink.jar"]
