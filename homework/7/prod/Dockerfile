FROM alpine
RUN apk update  &&\
    apk add maven   &&\
    DEBIAN_FRONTEND="noninteractive" apk add wget   &&\
    DEBIAN_FRONTEND="noninteractive" apk add git    &&\
    mkdir /usr/local/tomcat &&\
    wget https://apache-mirror.rbc.ru/pub/apache/tomcat/tomcat-8/v8.5.65/bin/apache-tomcat-8.5.65.tar.gz -O /tmp/tomcat.tar.gz  &&\
    cd /tmp && tar xvfz tomcat.tar.gz && cp -Rv /tmp/apache-tomcat-8.5.65/* /usr/local/tomcat/
EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run