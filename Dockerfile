FROM centos:latest
MAINTAINER rockonit2015@gmail.com
RUN yum install -y httpd \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page267/pcoint.zip
WORKDIR /var/www/html
RUN unzip pcoint.zip
RUN cp -rvf pcoint/*
RUN rm -rf pcoint pcoint.zip
CMD ["/usr/sbin/httpd", "-D",   "FOREGROUND"]
EXPOSE 80
