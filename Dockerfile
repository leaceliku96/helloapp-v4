FROM ubuntu:18.04
MAINTAINER Lea Celiku
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update &&  apt-get install -y apache2 libapache2-mod-php 
RUN rm /var/www/html/index.html
RUN mkdir /var/www/html/images
ADD index.php /var/www/html
EXPOSE 80
CMD /usr/sbin/apache2ctl -D FOREGROUND
