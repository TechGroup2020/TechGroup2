FROM centos
FROM node:alpine AS builder
RUN mkdir /opt/test/
RUN mkdir /opt/tomcat/
WORKDIR /app
COPY ./package.json .
RUN npm install
COPY . .
RUN ng build
COPY --from=build /app/dist/. /opt/tomcat/
