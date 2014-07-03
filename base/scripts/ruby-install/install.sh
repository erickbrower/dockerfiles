#!/bin/bash

OUT_FILE="ruby-install-"$1".tar.gz"
REMOTE_FILE="v"$1".tar.gz"

wget -O $OUT_FILE --no-check-certificate \
  "https://github.com/postmodern/ruby-install/archive/"$REMOTE_FILE

tar -zxvf $OUT_FILE
(cd "ruby-install-"$1 && make install)
