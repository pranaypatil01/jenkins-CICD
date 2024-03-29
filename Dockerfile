FROM centos:7
USER root
RUN yum update all
RUN yum install httpd -y
EXPOSE 80
RUN chmod 777 var/www/html
COPY . /var/www/html/
CMD ["httpd","-D", "FOREGROUND" ]
