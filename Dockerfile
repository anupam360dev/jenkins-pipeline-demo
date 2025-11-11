# Use a lightweight web server image
FROM nginx:alpine

# Copy a custom HTML file into the web server folder
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 for web traffic
EXPOSE 80

# Nginx runs automatically in the foreground
