# Use a base image with Tomcat
FROM tomcat:9.0.78-jre8

# Remove the default Tomcat webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR file of your web application to the container
COPY target/* .war /usr/local/tomcat/webapps/miniproject.war/