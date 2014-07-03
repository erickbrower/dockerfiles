FROM erickbrower/rails_base

RUN sh /opt/scripts/percona/v5.6/install.sh

ONBUILD ADD ./Gemfile /opt/app/Gemfile
ONBUILD ADD ./Gemfile.lock /opt/app/Gemfile.lock
ONBUILD RUN bundle install
ONBUILD ADD . /opt/app

CMD ["sh", "/opt/scripts/percona/v5.6/run.sh"]
