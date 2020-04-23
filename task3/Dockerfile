FROM centos:6

RUN yum update -y && yum install epel-release -y

RUN yum -y install centos-release-scl-rh -y

RUN yum --enablerepo=centos-sclo-rh install httpd24 -y

RUN scl enable httpd24 bash

RUN yum -y install httpd

RUN yum -y install wget

RUN wget http://www.apache.si/httpd/httpd-2.4.43.tar.bz2

RUN yum -y install wget rpm-build autoconf zlib-devel libselinux-devel libuuid-devel pcre-devel openldap-devel lua-devel libxml2-devel distcache-devel openssl-devel postgresql-devel mysql-devel sqlite-devel freetds-devel unixODBC-devel nss-devel distcache-devel expat-devel db4-devel mailcap libtool doxygen
RUN yum install centos-release-scl-rh
RUN yum -y install httpd24-apr-devel
RUN yum -y install httpd24-apr-util-devel

RUN yum -y install httpd24-build  
RUN yum --enablerepo=centos-sclo-rh-testing install httpd24-httpd

RUN service httpd24-httpd start


