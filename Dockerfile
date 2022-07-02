FROM ttbb/base

LABEL maintainer="shoothzj@gmail.com"

WORKDIR /opt/sh

ENV TELEGRAF_HOME /opt/sh/telegraf

ARG TARGETARCH

ARG download=1.23.0_linux_amd64

RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.23.0_linux_$TARGETARCH.tar.gz && \
mkdir /opt/sh/telegraf && \
tar -xf telegraf-1.23.0_linux_$TARGETARCH.tar.gz -C /opt/sh/telegraf --strip-components 2 && \
rm -rf telegraf-1.23.0_linux_$TARGETARCH.tar.gz

WORKDIR /opt/sh/telegraf