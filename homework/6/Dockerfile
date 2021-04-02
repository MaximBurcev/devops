FROM tomcat
RUN apt-get update && apt-get install git && apt-get install maven -y
RUN git clone https://github.com/jleetutorial/maven-project
WORKDIR maven-project
RUN mvn clean package
RUN cp webapp/target/webapp.war /usr/local/tomcat/webapps/
EXPOSE 8000
CMD ["catalina.sh", "run"]