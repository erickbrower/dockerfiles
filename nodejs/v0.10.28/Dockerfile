FROM erickbrower/base:ubuntu_13.10

RUN git clone -b v0.10.28-release https://github.com/joyent/node.git
RUN cd node && ./configure && make && make install
