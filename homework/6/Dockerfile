FROM ubuntu:latest
RUN apt-get -y update && apt-get -y upgrade
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install openjdk-8-jdk wget git maven
RUN mkdir /usr/local/tomcat
RUN wget https://apache-mirror.rbc.ru/pub/apache/tomcat/tomcat-8/v8.5.64/bin/apache-tomcat-8.5.64.tar.gz -O /tmp/tomcat.tar.gz
RUN cd /tmp && tar xvfz tomcat.tar.gz
RUN cp -Rv /tmp/apache-tomcat-8.5.64/* /usr/local/tomcat/
RUN git clone https://github.com/jleetutorial/maven-project
WORKDIR maven-project
RUN mvn clean package && rm -rf /usr/local/tomcat/webapps/* && cp webapp/target/webapp.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run