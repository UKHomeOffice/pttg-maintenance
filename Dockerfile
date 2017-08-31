FROM quay.io/ukhomeofficedigital/centos-base:latest

ENV USER pttg
ENV GROUP pttg
ENV NAME pttg-maintenance

ENV JAR_PATH build/libs
ARG VERSION

#WORKDIR /htmlstatic

#RUN groupadd -r ${GROUP} && \
#    useradd -r -g ${USER} ${GROUP} -d /htmlstatic && \
 #   mkdir -p /htmlstatic && \
#    chown -R ${USER}:${GROUP} /htmlstatic

RUN mkdir -p /htmlstatic
COPY index.html /htmlstatic
RUN chmod a+x /htmlstatic/index.html

VOLUME /htmlstatic

#USER pttg

CMD exec /bin/bash -c "trap : TERM INT; sleep infinity & wait"

