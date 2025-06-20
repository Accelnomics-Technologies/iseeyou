# Use official Nginx image as base
FROM nginx:alpine

# Remove default Nginx index page
RUN rm -rf /usr/share/nginx/html/*

# Copy your index.html to Nginx html directory
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start Nginx (default command)
CMD ["nginx", "-g", "daemon off;"]
