# Base image: NGINX latest version
FROM nginx:latest

# Remove the default NGINX HTML content
RUN rm -rf /usr/share/nginx/html/*

# Copy the web application (assuming it's static content like HTML, CSS, JS)
COPY webapp/target/* /usr/share/nginx/html/

# Expose the default NGINX port
EXPOSE 80

# Start NGINX (no need for a custom entry point as NGINX starts automatically)
CMD ["nginx", "-g", "daemon off;"]
