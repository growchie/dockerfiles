FROM ubuntu:xenial

RUN export DEBIAN_FRONTEND=noneinteractive && apt-get update && \
echo 'firebird2.5-super shared/firebird/sysdba_password/first_install password masterkey' | debconf-set-selections && \
apt-get upgrade -y && apt-get -q -y install tzdata firebird2.5-super && \
sed -i.bak s/'RemoteBindAddress = localhost'/'#RemoteBindAddress = localhost'/g \
/etc/firebird/2.5/firebird.conf && \
mkdir /data && chown firebird:firebird /data && apt-get clean -y && \
ln -fs /usr/share/zoneinfo/Europe/Sofia /etc/localtime && dpkg-reconfigure -f noninteractive tzdata

EXPOSE 3050
USER firebird
VOLUME /var/log /var/lib/firebird/2.5/system /data

ENTRYPOINT /usr/sbin/fbguard -forever
