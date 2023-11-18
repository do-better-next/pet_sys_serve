FROM openjdk:8-jdk-alpine

VOLUME /tmp

ADD /target/pet_adoption_sys-1.0.jar  pet_adoption_sys-1.0.jar

EXPOSE 8080
ENV TZ=Asia/Shanghai

ENTRYPOINT ["java", "-jar", "/pet_adoption_sys-1.0.jar","--spring.profiles.active=prod"]