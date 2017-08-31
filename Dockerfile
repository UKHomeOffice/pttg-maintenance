FROM quay.io/ukhomeofficedigital/centos-base:latest

ENV USER pttg
ENV GROUP pttg
ENV NAME pttg-maintenance

ENV JAR_PATH build/libs
ARG VERSION

WORKDIR /htmltemp

RUN groupadd -r ${GROUP} && \
    useradd -r -g ${USER} ${GROUP} -d /htmltemp && \
    mkdir -p /htmltemp && \
    chown -R ${USER}:${GROUP} /htmltemp


COPY index.html /htmltemp
RUN chmod a+x /htmltemp/index.html


RUN mkdir /htmlstatic
RUN cp ./index.html /htmlstatic
VOLUME /htmlstatic


EXPOSE 8081

USER pttg

CMD exec /bin/bash -c "trap : TERM INT; sleep infinity & wait"

