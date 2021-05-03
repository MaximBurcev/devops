# build
FROM maven:3-jdk-7-alpine as build
COPY . ./
WORKDIR app
RUN mvn package
#
# run tomcat
FROM tomcat:8.0-jre7-alpine
COPY --from=build /app/target/*.war /usr/local/tomcat/webapps/
EXPOSE 8080
