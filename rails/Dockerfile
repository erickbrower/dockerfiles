FROM erickbrower/ruby:v2.1.2

RUN apt-get update -qq && apt-get install -y mysql-client libmysqlclient-dev postgresql-client

RUN git clone -b v0.10.28-release https://github.com/joyent/node.git
RUN cd node && ./configure && make && make install
