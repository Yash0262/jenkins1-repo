FROM httpd
RUN  dnf install httpd -y 
COPY index.html /var/www/html/index.html
EXPOSE 80
