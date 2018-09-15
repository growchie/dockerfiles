FROM growchie/etch

RUN apt-get install -y expect && \ 
expect -c "spawn /usr/bin/apt-get install -y firebird2-super-server;  \
expect -exact \"Plase enter new password for SYSDBA user: \"; send \"masterkey\r\"; \ 
expect -exact \"\r\"" && apt-get remove -y --purge expect tcl8.4

EXPOSE 3050
USER firebird
VOLUME /var/log /var/lib/firebird2/system

ENTRYPOINT /usr/lib/firebird2/bin/fbguard -forever
