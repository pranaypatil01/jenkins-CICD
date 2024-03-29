FROM centos:7
USER root
RUN yum update all
RUN yum install httpd -y
EXPOSE 80
echo "Done CICD Pipeline with jenkins" >> /var/www/html/index.html
CMD ["httpd","-D", "FOREGROUND" ]
