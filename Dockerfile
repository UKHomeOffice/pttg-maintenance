FROM quay.io/ukhomeofficedigital/centos-base:latest

ENV USER pttg
ENV GROUP pttg
ENV NAME pttg-maintenance

ENV JAR_PATH build/libs
ARG VERSION

#WORKDIR /htmltemp

#RUN groupadd -r ${GROUP} && \
#    useradd -r -g ${USER} ${GROUP} -d /htmltemp && \
 #   mkdir -p /htmltemp && \
#    chown -R ${USER}:${GROUP} /htmltemp

RUN mkdir -p /htmltemp
COPY index.html /htmltemp
RUN chmod a+x /htmltemp/index.html

COPY run.sh /htmltemp

VOLUME /htmlstatic

#USER pttg

RUN chmod a+x /htmltemp/run.sh

ENTRYPOINT /htmltemp/run.sh

