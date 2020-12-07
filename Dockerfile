FROM node AS build
RUN mkdir /opt/test/
RUN mkdir /opt/tomcat/
CMD chmod 777 /opt/test
WORKDIR /app
CMD npm install -g @angular/cli
COPY ./package.json .
CMD npm install
COPY . .
CMD ng build
COPY --from=build /app/dist/. /usr/share/
