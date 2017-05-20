FROM prographerj/ubuntu16-java8
MAINTAINER Prographer J<prographer.j@gmail.com>

ARG TOMCAT_VERSION=8.5.15

# tomcat
RUN curl -Ls http://apache.mirror.cdnetworks.com/tomcat/tomcat-8/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz | tar -xz -C /usr/local/
RUN cd /usr/local && ln -s ./apache-tomcat-$TOMCAT_VERSION tomcat8.5

ENV CATALINA_HOME /usr/local/tomcat8.5
ENV PATH $PATH:$CATALINA_HOME/bin

EXPOSE 8080

CMD ["catalina.sh", "run"]
