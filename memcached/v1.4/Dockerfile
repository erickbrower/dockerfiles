FROM erickbrower/base:ubuntu_13.10

RUN apt-get -qq update                                                          && \
    wget --quiet http://memcached.googlecode.com/files/memcached-1.4.15.tar.gz  && \
    tar xzf memcached-1.4.15.tar.gz                                             && \
    rm memcached-1.4.15.tar.gz                                                  && \
    cd memcached-*                                                              && \
    ./configure --prefix=/usr/local                                             && \
    make install                                                                && \
    cd .. && rm -rf memcached-*

EXPOSE 11211

ENTRYPOINT ["/usr/local/bin/memcached"]

CMD ["-u", "root", "-m", "128"]
