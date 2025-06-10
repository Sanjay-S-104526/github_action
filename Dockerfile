# Use the official Nginx image from Docker Hub
FROM nginx:latest
 
# Remove the default Nginx website
RUN rm -rf /usr/share/nginx/html/*
 
# Copy your static website files into the container
COPY ./dist /usr/share/nginx/html
 
# Copy a custom Nginx config file (optional)
# COPY nginx.conf /etc/nginx/nginx.conf
 
# Expose port 80
EXPOSE 80
 
# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
