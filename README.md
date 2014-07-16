dockerfiles
===========

My docker build files for creating a variety of images. Includes a Rakefile for quick and easy building in dependency order.

```
$ rake -T

rake all                      # Builds all images in dependency order.
rake base                     # Builds the base image, BEWARE will love you long time
rake development:all          # Builds all development images
rake development:express      # Builds an image for express development
rake development:rails        # Builds an image for rails development that includes PostgreSQL
rake development:rails_base   # Builds a base image for rails development
rake development:rails_mysql  # Builds an image for rails development that includes MySQL
rake services:all             # Builds all service images
rake services:memcached       # Builds an image for memcached
rake services:mongodb         # Builds an image for mongodb
rake services:percona         # Builds an image for percona
rake services:postgres        # Builds an image for postgres
rake services:redis           # Builds an image for redis

```
