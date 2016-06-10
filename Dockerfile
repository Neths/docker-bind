FROM gliderlabs/alpine:3.4
MAINTAINER vacher.michel@gmail.com

ENV BIND_USER=named

RUN apk add --update bash
RUN apk add --no-cache bind

ADD entrypoint.sh /sbin/entrypoint.sh
RUN chmod 755 /sbin/entrypoint.sh

EXPOSE 53/udp 53/tcp

VOLUME ["/etc/bind"]

ENTRYPOINT ["/sbin/entrypoint.sh"]
CMD ["/usr/sbin/named"]
