FROM gradle:jdk17 as backend
WORKDIR /backend
COPY . .
RUN gradle bootJar

FROM openjdk:17-slim
COPY --from=backend /backend/build/libs/realworld.jar /app/
EXPOSE 8080
CMD ["java", "-jar", "/app/realworld.jar"]