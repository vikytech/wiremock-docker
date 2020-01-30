FROM openjdk

ENV VERSION 2.25.1

RUN mkdir /opt/wiremock
WORKDIR /opt/wiremock
RUN curl -sSL -o wiremock.jar https://repo1.maven.org/maven2/com/github/tomakehurst/wiremock-standalone/$VERSION/wiremock-standalone-$VERSION.jar

EXPOSE 80

ENTRYPOINT ["java","-jar","wiremock.jar","--verbose", "--port", "80"]
