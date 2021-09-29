FROM tomcat:latest
RUN apt-get update
#RUN apt-get install nginx -y
RUN apt-get install maven -y
RUN apt-get install default-jdk -y
#RUN apt-get install tomcat8 -y
RUN apt-get install git -y
RUN mkdir /tmp/homework6
WORKDIR "/tmp/homework6"
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR "/tmp/homework6/boxfuse-sample-java-war-hello"
RUN mvn package
RUN cp -f /tmp/homework6/boxfuse-sample-java-war-hello/target/hello-1.0.war /usr/local/tomcat/webapps/
#RUN cp -f /tmp/homework6/boxfuse-sample-java-war-hello/target/hello-1.0.war /var/lib/tomcat8/webapps/
#EXPOSE 80
#EXPOSE 8080
#CMD ["nginx", "-g", "daemon off;"]
