FROM debian

WORKDIR /tmp

ENV PATH /opt/cprocsp/sbin/amd64:/opt/cprocsp/bin/amd64:$PATH

RUN apt-get update; apt-get install -y libidn11

COPY linux-amd64_deb linux-amd64_deb

RUN chmod +x linux-amd64_deb/install.sh

RUN ./linux-amd64_deb/install.sh

RUN cpconfig -hardware reader -add HDIMAGE store
