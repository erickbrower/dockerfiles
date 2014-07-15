FROM erickbrower/base

RUN . /opt/scripts/mongodb/v2.4/install.sh

RUN npm install -g grunt-cli bower express-generator mocha jshint nodemon

RUN mkdir /opt/app

WORKDIR /opt/app
