FROM shoothzj/base:jdk17

WORKDIR /opt/sentinel

RUN wget -q https://github.com/alibaba/Sentinel/releases/download/1.8.6/sentinel-dashboard-1.8.6.jar && \
    mv sentinel-dashboard-1.8.6.jar sentinel-dashboard.jar

ENV SENTINEL_HOME /opt/sentinel

WORKDIR /opt/sentinel

CMD [ "java", "-Dserver.port=8080", "-Dcsp.sentinel.dashboard.server=0.0.0.0:8080", "-Dproject.name=sentinel-dashboard", "-jar", "sentinel-dashboard.jar" ]
