# Build the app.
FROM maven:3.9.6-eclipse-temurin-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Run the app.
FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app

# Copy the built JAR from the Build stage.
COPY --from=build /app/target/DevOpsSummative-1.0-SNAPSHOT.jar app.jar

# Expose the app port (Render uses $PORT env var).
EXPOSE 8080

# Start the app.
CMD ["sh", "-c", "java -jar app.jar --server.port=$PORT"]