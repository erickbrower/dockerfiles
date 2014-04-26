FROM erickbrower/ruby-install:v0.4.0

RUN ruby-install -i /opt/rubies/ruby-2.1.0 ruby 2.1.0
RUN ssh-keygen -f /root/.ssh/id_rsa -t rsa -N ''
ENV PATH $PATH:/opt/rubies/ruby-2.1.0/bin
RUN gem install bundler
