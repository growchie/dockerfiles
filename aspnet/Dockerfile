FROM mcr.microsoft.com/dotnet/core/aspnet:3.1
LABEL maintainer="Velislav Varbanov <varbanov@bglinux.org>"

ARG TIMEZONE=Europe/Sofia

RUN echo "deb http://deb.debian.org/debian buster contrib" >> /etc/apt/sources.list && \
apt-get update -y && apt-get install apt-utils -y && apt-get upgrade -y   && \
echo 'msttcorefonts msttcorefonts/accepted-mscorefonts-eula select true' | debconf-set-selections && \
apt-get install -y --allow-unauthenticated ttf-mscorefonts-installer fontconfig libgdiplus && \
apt-get clean -y && rm -rf /var/lib/apt/lists/* && \
ln -sf /usr/share/zoneinfo/${TIMEZONE} /etc/localtime && \ 
dpkg-reconfigure -f noninteractive tzdata

CMD /bin/bash