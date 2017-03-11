#Container For CentOS 6
FROM centos:centos6

#Maintainer's name/email_id
MAINTAINER autor@abc.com

#-----------------------Installing Python 2.7--------------------------
##Update the source list
RUN yum -y update
##Downloading Python-2.7 on the VM
RUN wget https://www.python.org/ftp/python/2.7.2/Python-2.7.2.tgz
##Extracting the zipped folder
RUN tar xvfz Python-2.7.2.tgz
##Going into the extracted folder
RUN cd Python-2.7.2
##confuring the file
RUN ./configure --prefix=/usr/local
##Installing
RUN make
RUN make altinstall
##Moving the folder Python2.7 to python
RUN ln -s /usr/local/bin/python2.7 /usr/local/bin/python
