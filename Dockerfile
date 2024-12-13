# Use an official OpenJDK image with Alpine 17
FROM openjdk:17-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/service-discovery-0.0.1-SNAPSHOT.jar /app/service-discovery.jar

# Expose the port your application runs on
EXPOSE 8761

# Run the application
ENTRYPOINT ["java", "-jar", "service-discovery.jar"]
