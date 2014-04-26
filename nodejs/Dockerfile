FROM erickbrower/docker-base

RUN git clone -b v0.10.26-release https://github.com/joyent/node.git
RUN cd node && ./configure && make && make install
