# VERSION      1

# use blalor/centos bare bones centos 6.5 image
FROM blalor/centos

MAINTAINER webts

RUN yum -y update

# Add Ajeni repo
RUN yum install -y http://repo.ajenti.org/ajenti-repo-1.0-1.noarch.rpm

# install required
RUN yum install -y httpd mysql-server php php-mysql phpmyadmin openssh-server

# expose ports
EXPOSE 80:80 443:443

CMD /etc/init.d/httpd start && /etc/init.d/mysqld start && /etc/init.d/ssh start
