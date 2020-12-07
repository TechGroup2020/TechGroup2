FROM node:alpine AS builder
RUN mkdir /opt/test/
RUN mkdir /opt/tomcat/
CMD chmod 777 /opt
WORKDIR /app
CMD npm install -g @angular/cli
COPY ./package.json .
CMD npm install
COPY . .
CMD ng build
COPY --from=build /app/. /opt/test
