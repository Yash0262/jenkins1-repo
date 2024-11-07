FROM httpd
ENV DEBIAN_FRONTEND=noninteractive
RUN  dnf install httpd -y 
COPY index.html /var/www/html/index.html
EXPOSE 80
