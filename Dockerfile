FROM centos:latest
MAINTAINER rockonit2015@gmail.com
RUN yum install -y httpd \
  zip \
 unzip
ADD https://github.com/ColorlibHQ/unapp/archive/master.zip
WORKDIR /var/www/html
RUN unzip unapp-master.zip
RUN cp -rvf unapp-master/*
RUN rm -rf unapp-master unapp-master.zip
CMD ["/usr/sbin/httpd", "-D",   "FOREGROUND"]
EXPOSE 80
