FROM alpine
RUN apk update
RUN apk add maven
RUN DEBIAN_FRONTEND="noninteractive" apk add wget
RUN DEBIAN_FRONTEND="noninteractive" apk add git
RUN mkdir /usr/local/tomcat
RUN wget https://apache-mirror.rbc.ru/pub/apache/tomcat/tomcat-8/v8.5.65/bin/apache-tomcat-8.5.65.tar.gz -O /tmp/tomcat.tar.gz
RUN cd /tmp && tar xvfz tomcat.tar.gz && cp -Rv /tmp/apache-tomcat-8.5.65/* /usr/local/tomcat/
EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run