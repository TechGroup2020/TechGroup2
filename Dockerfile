FROM node:alpine AS builder
RUN mkdir /opt/test/
RUN mkdir /opt/tomcat/
WORKDIR /app
RUN curl -sL https://rpm.nodesource.com/setup_8.x
RUN yum install -y nodejs
RUN npm install -g @angular/cli
COPY ./package.json .
RUN npm install
COPY . .
RUN ng build
COPY --from=build /app/dist/. /opt/tomcat/
