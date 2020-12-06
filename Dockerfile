FROM centos
RUN mkdir /opt/test/
RUN mkdir /opt/tomcat/
WORKDIR /opt/test
COPY --from=build-step /test/dist /opt/tomcat/

