FROM openjdk:17

ENV PORT 8282
ENV EUREKA_URL "http://host.docker.internal:8714/eureka/"

COPY target/gateway-0.0.1-SNAPSHOT.jar java-app.jar
ENTRYPOINT ["java", "-jar", "java-app.jar"]