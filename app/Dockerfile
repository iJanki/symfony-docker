FROM centos:7

MAINTAINER Daniele Cesarini <daniele.cesarini@gmail.com>

RUN yum install -y wget && \
    wget http://rpms.famillecollet.com/enterprise/remi-release-7.rpm && \
	curl -O http://rpms.famillecollet.com/RPM-GPG-KEY-remi; rpm --import RPM-GPG-KEY-remi && \
	yum localinstall -y remi-release-7.rpm && \
	yum update -y && \
	yum --enablerepo=remi --enablerepo=remi-php55 install -y php-mysqlnd php-gd php-mbstring php-intl php-xmlrpc php-pear php-cli php-xml php-soap php-pdo php-ldap php-mcrypt php-bcmath php-odbc php-imap php-process php-pspell php-snmp php-devel php-pecl-xdebug php-phpunit-PHPUnit php-tidy php-phpunit-PHP-CodeCoverage php-phpmd-PHP-PMD php-pear-PHP-CodeSniffer php-pdepend-PHP-Depend php pear-PhpDocumentor php-pear-phing

ADD symfony.ini /etc/php.d/
ADD xdebug.ini /etc/php.d/

VOLUME /var/www/symfony

