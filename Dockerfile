FROM tomcat:8
RUN apt-get update 
ADD https://files-apps.s3.ap-south-1.amazonaws.com/openmrs.war /usr/local/tomcat/webapps
EXPOSE 8080
ENTRYPOINT ["catalina.sh", "run"]