FROM ubuntu:14.04

MAINTAINER sksourou <sksourou@student.42.fr>

RUN apt-get update && apt-get install -y openssh-server

RUN mkdir /var/run/sshd

RUN sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config

RUN sed -i 's/Port 22/Port 42/' /etc/ssh/sshd_config

RUN adduser --system sksourou

RUN mkdir /home/sksourou/.ssh

ADD id_rsa.pub /home/sksourou/.ssh/authorized_keys

RUN sed -i 's@/home/sksourou:/bin/false@/home/sksourou:/bin/bash@' /etc/passwd

EXPOSE 42

CMD ["/usr/sbin/sshd", "-D"]
