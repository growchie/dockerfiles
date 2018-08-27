FROM ubuntu:trusty
LABEL maintainer="Velislav Varbanov <varbanov@bglinux.org>"

RUN export DEBIAN_FRONTEND=noneinteractive && export TZ='Europe/Sofia' && apt-get update && apt-get install -y apt-utils && \
apt-get install -y php5-interbase libapache2-mod-php5 php-token-stream php5-xmlrpc php5-json php5-cli php5-gd php5 php-mail && \
apt-get clean -y && rm -rf /var/lib/apt/lists/*

CMD /bin/bash

