# Use the official OpenJDK image for Java 17
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY test_shopping_site.jar .

# Expose port 10000 for Render.com
EXPOSE 10000

# Set the environment variable for the port (if your app uses it)
ENV PORT 10000

# Run the JAR file
CMD ["java", "-jar", "test_shopping_site.jar"]
