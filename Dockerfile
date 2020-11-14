FROM openjdk:15-jdk-slim

ENV HAWTIO_VERSION 2.11.1
ENV HAWTIO_PORT 8080

ADD "https://repo1.maven.org/maven2/io/hawt/hawtio-app/${HAWTIO_VERSION}/hawtio-app-${HAWTIO_VERSION}.jar" /hawtio.jar
ADD run /

RUN chmod +x /run

ENTRYPOINT [ "/run" ]