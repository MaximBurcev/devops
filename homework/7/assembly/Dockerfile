FROM ubuntu:latest
RUN apt-get -y update && apt-get -y upgrade && DEBIAN_FRONTEND="noninteractive" apt-get -y install wget git maven && git clone https://github.com/jleetutorial/maven-project
WORKDIR maven-project
RUN mvn clean package
CMD cp webapp/target/webapp.war /usr/local/tomcat/webapps/