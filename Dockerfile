# Use a lightweight base image
FROM ubuntu:latest

# Set working directory
WORKDIR /app

# Copy all files into the container
COPY . /app

# Example command (you can change this later)
CMD ["echo", "Hello from Jenkins Docker build!"]
