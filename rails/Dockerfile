FROM erickbrower/ruby

RUN apt-get update -qq 
RUN apt-get install -y mysql-client libmysqlclient-dev postgresql-client

RUN git clone -b v0.10.28-release https://github.com/joyent/node.git
RUN cd node && ./configure && make && make install

RUN mkdir /opt/app
RUN mkdir /opt/bundle

ENV BUNDLE_PATH /opt/bundle

WORKDIR /opt/app

ONBUILD ADD ./Gemfile /opt/app/Gemfile
ONBUILD ADD ./Gemfile.lock /opt/app/Gemfile.lock
ONBUILD RUN bundle install
ONBUILD ADD . /opt/app
