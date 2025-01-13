FROM eclipse-temurin:17-jdk-alpine

# Set application directory
WORKDIR /app

# Copy application JAR file
COPY target/real-time-chat-application-1.0.0.jar app.jar

# Expose port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
