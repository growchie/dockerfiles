FROM ubuntu:bionic
LABEL maintainer="Velislav Varbanov <varbanov@bglinux.org>"

RUN export DEBIAN_FRONTEND=noneinteractive && export TZ='Europe/Sofia' && apt-get update && apt-get upgrade -y && apt-get install -y apt-utils && \
apt-get install -y php-interbase libapache2-mod-php php-mbstring php-tokenizer php-xml php-ctype php-json php-cli php-gd php composer php-zip php-mail && \
apt-get clean -y

CMD /bin/bash

