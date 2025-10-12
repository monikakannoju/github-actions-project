# Use Java 17 JDK
FROM eclipse-temurin:17-jdk-alpine

# Set working directory inside container
WORKDIR /usr/src/app

# Copy the JAR into the container
COPY app/*.jar app.jar

# Expose port your app runs on
EXPOSE 8080

# Run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
