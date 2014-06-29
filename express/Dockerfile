FROM erickbrower/nodejs

RUN apt-get update -qq
RUN apt-get install -y postgresql-client

RUN npm install -g grunt-cli
RUN npm install -g bower
RUN npm install -g express-generator

RUN mkdir /opt/app
WORKDIR /opt/app

ONBUILD ADD ./package.json /tmp/package.json
ONBUILD RUN cd /tmp && npm install
ONBUILD ADD . /opt/app && rm -r /opt/app/node_modules
ONBUILD RUN cp -a /tmp/node_modules /opt/app/
