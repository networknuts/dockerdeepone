FROM ubi8/ubi:latest
MAINTAINER networknuts <info@networknuts.net>
RUN yum install httpd -y
COPY index.html /var/www/html/
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
