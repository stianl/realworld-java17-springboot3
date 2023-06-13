FROM openjdk:17-slim
WORKDIR /backend
COPY . .
EXPOSE 8080
CMD ["./gradlew", "bootRun"]