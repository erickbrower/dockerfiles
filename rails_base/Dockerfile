FROM erickbrower/base

ENV PATH $PATH:/opt/rubies/ruby-2.1.2/bin 
ENV BUNDLE_PATH /opt/bundle
RUN gem install bundler

RUN mkdir /opt/bundle
RUN mkdir /opt/app

WORKDIR /opt/app
