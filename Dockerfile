FROM alpine

RUN apk add openjdk11\
    maven\
    curl

VOLUME /int/dockerapp

WORKDIR /int/dockerapp

COPY ./ /int/dockerapp

ARG JAR_FILE=target/hw11-0.0.1-SNAPSHOT.jar

ADD ${JAR-FILE} hw13.jar

EXPOSE 8080

CMD java -jar hw13.jar