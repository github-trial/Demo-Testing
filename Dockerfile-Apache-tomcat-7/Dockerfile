#Container For CentOS 6
FROM centos:centos6

#Maintainer's name/email_id
MAINTAINER autor@abc.com

#---------------------Apache tomcat 7 - running on port 8080-------------
#There are many helpful utils like tar, vim, nc but for this only sudo is required
RUN yum -y install sudo
 
#Intsalling Depedencies for Apache tomcat
## JDK7 ##
 
#ADD uncompresses this tarball automatically

ADD jdk-7u72-linux-x64.tar.gz /opt
WORKDIR /opt/jdk1.7.0_72
RUN alternatives --install /usr/bin/java java /opt/jdk1.7.0_72/bin/java 1
RUN alternatives --install /usr/bin/jar jar /opt/jdk1.7.0_72/bin/jar 1
RUN alternatives --install /usr/bin/javac javac /opt/jdk1.7.0_72/bin/javac 1
RUN echo "JAVA_HOME=/opt/jdk1.7.0_72" >> /etc/environment
 
## TOMCAT ##
 
#ADD uncompresses this tarball automatically

ADD apache-tomcat-7.0.57.tar.gz /usr/local/tomcat
WORKDIR /usr/local/tomcat
RUN mv  apache-tomcat-7.0.57 tomcat7
RUN echo "JAVA_HOME=/opt/jdk1.7.0_72/" >> /etc/default/tomcat7
RUN groupadd tomcat
RUN useradd -s /bin/bash -g tomcat tomcat
RUN chmod 755 /etc/default/tomcat7
RUN chkconfig --add tomcat && chkconfig --level 234 tomcat on
ADD /files/config   /usr/local/tomcat/tomcat7/conf/
ADD /files/lib  /usr/local/tomcat/tomcat7/lib/
ENV HOME /usr/local/tomcat/tomcat7
ENV PATH $PATH:$HOME/bin

#exposed to port 8080
EXPOSE 8080

CMD ["service","tomcat","start"]


