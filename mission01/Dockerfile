FROM debian 

MAINTAINER sksourou <sksourou@student.42.fr>

RUN apt-get update && apt-get install -y nginx

RUN echo 'export PS1="sksourou@42born2code:/# "' >> /root/.bashrc

RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf

ADD index.html /var/www/html/

CMD nginx 

