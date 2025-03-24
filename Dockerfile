# Use an official OpenJDK base image
FROM eclipse-temurin:17-jdk-alpine

# Set working directory inside the container
WORKDIR /app

# Copy your built JAR into the container
COPY target/DevOpsSummative-1.0-SNAPSHOT.jar app.jar

# Expose the port, Render will overrdie this with a var
EXPOSE 8080

# Run the app, passing the dynamic PORT variable from Render
CMD ["sh", "-c", "java -jar app.jar --server.port=$PORT"]