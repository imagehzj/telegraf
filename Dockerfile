FROM ttbb/base

LABEL maintainer="shoothzj@gmail.com"

WORKDIR /opt/sh

ARG download=1.19.3_linux_amd64

RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-$download.tar.gz && \
mkdir /opt/sh/telegraf && \
tar -xf telegraf-$download.tar.gz -C /opt/sh/telegraf --strip-components 2 && \
rm -rf telegraf-$download.tar.gz

WORKDIR /opt/sh/telegraf