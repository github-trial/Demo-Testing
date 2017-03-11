#Container For CentOS 6
FROM centos:centos6

#Maintainer's name/email_id
MAINTAINER autor@abc.com

RUN yum -y update; yum clean all
#Installing MongoDB
RUN echo -e "[mongodb]\nname=MongoDB Repository\nbaseurl=https://repo.mongodb.org/yum/redhat/7/mongodb-org/3.2/`uname -m`/\ngpgcheck=0\nenabled=1" > /etc/yum.repos.d/mongodb.repo
RUN yum -y install epel-release; yum clean all
RUN yum -y install mongodb-server; yum clean all
RUN yum install -y mongodb-org
RUN mkdir -p /data/db

#Expose Port
EXPOSE 27017
ENTRYPOINT ["/usr/local/bin/mongod"]
