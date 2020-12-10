FROM centos
RUN mkdir /opt/test/
RUN mkdir /opt/tomcat/
WORKDIR /opt
CMD chmod 777 /opt/test
CMD npm install -g @angular/cli
COPY ./package.json /opt
CMD npm install
COPY . /opt/tomcat
CMD ng build
COPY dist/. /opt/test
CMD rm -r -f tomcat

