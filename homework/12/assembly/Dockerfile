FROM ubuntu:latest
RUN apt-get -y update && apt-get -y upgrade && DEBIAN_FRONTEND="noninteractive" apt-get -y install wget git maven && git clone https://github.com/shephertz/App42PaaS-Java-MySQL-Sample
WORKDIR App42PaaS-Java-MySQL-Sample
RUN mvn clean package
RUN mkdir -p /usr/local/tomcat/webapps/
CMD cp target/App42PaaS-Java-MySQL-Sample-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/