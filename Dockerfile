FROM tomcat:8.0

COPY tomcat-users.xml /usr/local/tomcat/conf/

#RUN mkdir -p /usr/local/tomcat/webapps/dev
COPY target/*.jar  /usr/local/tomcat/webapps/dev.jar

CMD chmod +x /usr/local/tomcat/bin/

CMD ["catalina.sh", "run"]

EXPOSE 8080
