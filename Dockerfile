FROM openjdk:17-jdk-slim

WORKDIR /app

ADD . /app

RUN sudo apt update && sudo apt install maven

RUN mvn clean package 

EXPOSE 8080

ENTRYPOINT [ "java" ]

CMD [ "-jar", "/app/target/spring-boot-2-hello-world-1.0.2-SNAPSHOT.jar" ]


