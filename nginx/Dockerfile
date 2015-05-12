FROM centos:7

MAINTAINER Daniele Cesarini <daniele.cesarini@gmail.com>

RUN yum install -y wget && \
    wget http://rpms.famillecollet.com/enterprise/remi-release-7.rpm && \
	curl -O http://rpms.famillecollet.com/RPM-GPG-KEY-remi; rpm --import RPM-GPG-KEY-remi && \
	yum localinstall -y remi-release-7.rpm && \
	yum update -y && \
	yum --enablerepo=remi install -y nginx httpd && \
        usermod -u 1000 apache

RUN ln -sf /dev/stdout /var/log/nginx/access.log && ln -sf /dev/stderr /var/log/nginx/error.log

ADD nginx.conf /etc/nginx/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
