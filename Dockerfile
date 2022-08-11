FROM maven:eclipse-temurin as build
RUN mkdir /src
COPY . /src
WORKDIR /src
RUN mvn clean package

FROM quay.io/keycloak/keycloak:19.0.1
COPY --from=build /src/target/*.jar /opt/keycloak/providers/keycloak-custom-theme.jar
CMD ["/opt/bin/kc.sh","build"]
