FROM erickbrower/base:ubuntu_13.10

RUN apt-get -qq update                                                     && \
    wget --quiet http://download.redis.io/releases/redis-2.8.8.tar.gz      && \
    tar xzf redis-2.8.8.tar.gz                                             && \
    cd redis-2.8.8                                                         && \
    make                                                                   && \
    install -t /usr//bin src/redis-server                                  && \
    cd ..                                                                  && \
    rm redis-2.8.8.tar.gz && rm -rf redis-2.8.8                            && \
    mkdir /etc/redis                                                       && \
    wget --quiet --no-check-certificate http://raw.github.com/antirez/redis/2.8/redis.conf -O /etc/redis/redis.conf

EXPOSE 6379

ENTRYPOINT  ["/usr/bin/redis-server"]
