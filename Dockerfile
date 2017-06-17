FROM growchie/firebird15

COPY src/NBISUDF.so /usr/lib/firebird2/UDF/NBISUDF.so

USER root
RUN mkdir /data && chmod 777 /data && chown firebird:firebird /usr/lib/firebird2/UDF/NBISUDF.so

VOLUME /data /var/log /var/lib/firebird2/system

EXPOSE 3050
USER firebird

ENTRYPOINT /usr/lib/firebird2/bin/fbguard -forever
