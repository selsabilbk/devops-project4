FROM tomcat:8.0

COPY tomcat-users.xml /usr/local/tomcat/conf/

#RUN mkdir -p /usr/local/tomcat/webapps/dev
COPY target/classes usr/local/tomcat/webapps/
COPY target/spring-boot-sample-web-groovy-templates-2.1.2.RELEASE.jar  /usr/local/tomcat/webapps/spring-boot-sample-web-groovy-templates-2.1.2.RELEASE.jar

#CMD chmod +x /usr/local/tomcat/bin/

#CMD ["catalina.sh", "run"]

EXPOSE 8080
