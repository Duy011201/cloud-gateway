# Build stage
FROM maven:3-openjdk-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests && ls -lh target/

# Run stage
FROM openjdk:17-jdk-slim
WORKDIR /app
COPY --from=build /app/target/*.jar cloud-gateway.jar
ENTRYPOINT ["java", "-jar", "/app/cloud-gateway.jar"]
