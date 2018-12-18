FROM dotcloudid/alpine:latest-stable

LABEL maintainer="Yanglin <i@yangl.in>"
LABEL from="https://wiki.alpinelinux.org/wiki/MariaDB"
LABEL reference="https://docs.docker.com/develop/develop-images/dockerfile_best-practices"


RUN apk add --no-cache mariadb mariadb-client \
    && rm -rf /var/cache/apk/*


COPY startup.sh /
RUN chmod a+x /startup.sh

EXPOSE 3306 33060
STOPSIGNAL SIGTERM

CMD ["/startup.sh"]
