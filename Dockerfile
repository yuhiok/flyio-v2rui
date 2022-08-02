FROM alpine:latest

WORKDIR /root
COPY v2rui.sh /root/v2rui.sh

RUN set -ex \
    && apk add --no-cache tzdata openssl ca-certificates \
    && mkdir -p /etc/v2rui /usr/local/share/v2rui /var/log/v2rui \
    && chmod +x /root/v2rui.sh

CMD [ "/root/v2rui.sh" ]
