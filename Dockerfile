# Use Red Hat UBI 8 as the base image
FROM docker.io/redhat/ubi8

# Install Apache (httpd) using yum
RUN yum install httpd -y 

# Copy custom index.html to the Apache document root
COPY index.html /var/www/html/index.html

# Expose port 80 to allow access to the web server
EXPOSE 80

# Start Apache in the foreground
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
