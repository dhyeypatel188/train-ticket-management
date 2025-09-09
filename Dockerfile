# Use the official Nginx image from Docker Hub
FROM nginx:latest

# Remove the default Nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy our custom nginx.conf to container
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80 so Render can access it
EXPOSE 80
