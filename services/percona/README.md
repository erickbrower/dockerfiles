# docker-percona

Build a Percona MySQL 5.6 server container.

MySQL credentials are: `root / [no password]`.

Build and run:
<pre>
git clone git@github.com:erickbrower/docker-percona.git
cd docker-percona
docker build -t [your-image-name] .
docker run -d [your-image-name]
</pre>
