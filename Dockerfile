FROM registry.ingageapp.com:5000/jdk:8
COPY target/base-group-service /opt/platform/services/base/base-group-service
COPY run.sh /run.sh
RUN adduser -DH xiaoshouyi
WORKDIR /opt/platform/services/base/base-group-service
ENTRYPOINT ["/run.sh"]
