FROM erickbrower/ruby-install:v0.4.0

RUN ruby-install -i /opt/rubies/ruby-2.1.2 ruby 2.1.2
RUN ssh-keygen -f /root/.ssh/id_rsa -t rsa -N ''
ENV PATH $PATH:/opt/rubies/ruby-2.1.2/bin
RUN gem install bundler
