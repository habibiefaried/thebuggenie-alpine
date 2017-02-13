FROM httpd:2.4.25-alpine

MAINTAINER habibiefaried@gmail.com
#Default Config, just change this
ENV MYSQL_ROOT_PASSWORD=thebuggenie

RUN apk upgrade --no-cache --update && apk add --no-cache --update \
        bash \
        ca-certificates \
        libuuid \
        apr \
        apr-util \
        libxml2-dev \
        zlib-dev \
        libressl \
        libressl-dev \
        libjpeg-turbo \
        icu \
        icu-libs \
        pcre \
        zlib \
        git mysql mysql-client nano

COPY my.cnf /etc/mysql/my.cnf
RUN echo "export TERM=xterm" > /root/.bashrc
RUN echo 'PS1="\[\033[35m\]\t\[\033[m\]-\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "' >> /root/.bashrc
COPY init.sh /init.sh
RUN chmod +x /init.sh

VOLUME ["/app"]
WORKDIR /usr/local/apache2/htdocs
RUN git clone https://github.com/thebuggenie/thebuggenie.git

CMD ["/init.sh"]