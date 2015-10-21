FROM java:8

MAINTAINER Florian Bernard <florian.bernard@capgemini.com>

EXPOSE 8080

COPY spring-doge/target/*.jar /usr/src/spring-doge/spring-doge.jar
WORKDIR /usr/src/spring-doge
CMD java -Dserver.port=8080 -Dspring.data.mongodb.uri=$MONGODB_URI -jar spring-doge.jar