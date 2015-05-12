FROM centos:7

MAINTAINER Daniele Cesarini <daniele.cesarini@gmail.com>

RUN yum install -y wget && \
    wget http://rpms.famillecollet.com/enterprise/remi-release-7.rpm && \
	curl -O http://rpms.famillecollet.com/RPM-GPG-KEY-remi; rpm --import RPM-GPG-KEY-remi && \
	yum localinstall -y remi-release-7.rpm && \
	yum update -y && \
	yum --enablerepo=remi --enablerepo=remi-php55 install -y php-cli php-mysqlnd php-gd php-mbstring php-intl php-xmlrpc php-pear  php-xml php-soap php-pdo php-ldap php-mcrypt php-fpm php-bcmath php-odbc php-imap php-process php-pspell php-snmp && \
        usermod -u 1000 apache

ADD symfony.ini /etc/php.d/
ADD www.conf /etc/php-fpm.d/

EXPOSE 9000

CMD ["php-fpm", "--nodaemonize"]
