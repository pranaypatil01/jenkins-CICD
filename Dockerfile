FROM centos:7
USER root
RUN yum update all
RUN yum install httpd -y
EXPOSE 80
RUN echo "Hello today start new seesion at time 8 pm" >> /var/www/html/index.html
CMD ["httpd","-D", "FOREGROUND" ]
