FROM erickbrower/rails_base

RUN sh /opt/scripts/postgres/v9.1/install.sh

ONBUILD ADD ./Gemfile /opt/app/Gemfile
ONBUILD RUN bundle install
ONBUILD ADD . /opt/app
