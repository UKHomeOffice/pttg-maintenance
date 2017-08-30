FROM quay.io/ukhomeofficedigital/centos-base:latest

ENV USER pttg
ENV GROUP pttg
ENV NAME pttg-maintenance

ENV JAR_PATH build/libs
ARG VERSION

WORKDIR /html

RUN groupadd -r ${GROUP} && \
    useradd -r -g ${USER} ${GROUP} -d /html && \
    mkdir -p /html && \
    chown -R ${USER}:${GROUP} /html

COPY index.html /html
#COPY run.sh /app

#RUN chmod a+x /app/run.sh

EXPOSE 8081

USER pttg

#ENTRYPOINT /app/run.sh
