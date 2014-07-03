#!/bin/bash

VERSION="v"$1"-release"

git clone -b $VERSION http://github.com/joyent/node.git
(cd node && ./configure && make && make install)
