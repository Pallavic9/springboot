FROM  radut/openjdk-11-maven:latest

COPY ./target/demo-0.0.1-SNAPSHOT.jar /usr/app/

WORKDIR /usr/app

RUN sh -c 'touch demo-0.0.1-SNAPSHOT.jar'

ENTRYPOINT ["java","-jar","demo-0.0.1-SNAPSHOT.jar"]
