#!/bin/bash

OUT_FILE="chruby-"$1".tar.gz"
REMOTE_FILE="v"$1".tar.gz"

wget -O $OUT_FILE --no-check-certificate \
  "https://github.com/postmodern/chruby/archive/"$REMOTE_FILE

tar -zxvf $OUT_FILE
(cd "chruby-"$1 && make install)
