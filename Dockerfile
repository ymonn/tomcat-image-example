FROM java
MAINTAINER jack
RUN apt-get update
RUN apt-get install -y wget

RUN cd /

RUN wget https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.94/bin/apache-tomcat-7.0.94.tar.gz
RUN tar zxvf apache-tomcat-7.0.94.tar.gz

CMD ["/apache-tomcat-7.0.94/bin/catalina.sh", "run"]

EXPOSE 8080

