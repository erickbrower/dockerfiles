FROM erickbrower/nodejs

RUN npm config set prefix /opt

RUN npm install -g grunt-cli
RUN npm install -g bower
RUN npm install -g express-generator

VOLUME /opt/lib/node_modules

RUN mkdir /opt/app

ONBUILD ADD ./package.json /tmp/package.json
ONBUILD RUN cd /tmp && npm install
ONBUILD ADD . /opt/app
ONBUILD RUN cp -a /tmp/node_modules /opt/app/
