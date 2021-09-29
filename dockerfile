FROM tomcat
RUN apt-get update
RUN apt-get install maven -y
RUN mkdir /tmp/homework6
WORKDIR "/tmp/homework6"
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR "/tmp/homework6/boxfuse-sample-java-war-hello"
RUN mvn package
RUN cp -f /tmp/homework6/boxfuse-sample-java-war-hello/target/hello-1.0.war /usr/local/tomcat/webapps/
