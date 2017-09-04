FROM quay.io/ukhomeofficedigital/centos-base:latest

ENV USER pttg
ENV GROUP pttg
ENV NAME pttg-maintenance

ENV JAR_PATH build/libs
ARG VERSION

RUN mkdir -p /htmltemp
COPY /static/ /htmltemp/
RUN ls -la /htmltemp/*
RUN chmod a+x /htmltemp/index.html

COPY run.sh /htmltemp

VOLUME /htmlstatic


RUN chmod a+x /htmltemp/run.sh

ENTRYPOINT /htmltemp/run.sh

