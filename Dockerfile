FROM centos
RUN mkdir /opt/test/
RUN mkdir /opt/tomcat/
CMD chmod 777 /opt/test
CMD npm install -g @angular/cli
COPY ./package.json .
CMD npm install
COPY . .
CMD ng build
COPY dist/. /opt/test
CMD rm -r -f app
