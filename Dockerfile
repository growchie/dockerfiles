FROM ubuntu:trusty
LABEL maintainer="Velislav Varbanov <varbanov@bglinux.org>"

RUN export DEBIAN_FRONTEND=noninteractive && export TZ='Europe/Sofia' && apt-get update && apt-get install -y apt-utils && \
apt-get install -y php5-interbase libapache2-mod-php5 php-token-stream php5-xmlrpc php5-json php5-cli php5-gd php5 php-mail && \
apt-get clean -y && rm -rf /var/lib/apt/lists/* && ln -s /etc/php5/mods-available/interbase.ini /etc/php5/apache2/conf.d/20-interbase.ini && \
ln -s /etc/php5/mods-available/interbase.ini /etc/php5/cli/conf.d/20-interbase.ini

CMD /bin/bash

