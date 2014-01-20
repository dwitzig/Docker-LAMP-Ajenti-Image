# VERSION      1

# use blalor/centos bare bones centos 6.5 image
FROM blalor/centos

MAINTAINER webts

RUN yum -y update

# Add Ajeni repo
RUN yum install -y http://repo.ajenti.org/ajenti-repo-1.0-1.noarch.rpm

# install required
RUN yum install -y httpd mysql-server php php-mysql phpmyadmin openssh-server ajenti

# expose ports
EXPOSE 80:80 443:443 8000:8000 2222:22

CMD /etc/init.d/httpd start && /etc/init.d/mysqld start && /etc/init.d/sshs start && /etc/init.d/ajenti start
