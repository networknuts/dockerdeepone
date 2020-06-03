FROM centos:latest
MAINTAINER networknuts <info@networknuts.net>
RUN yum install httpd -y
RUN yum install stress -y
COPY index.html /var/www/html
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 8080
