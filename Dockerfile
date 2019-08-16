FROM ubuntu:latest

MAINTAINER narendra  <pnreddy0022@gmail.com>

WORKDIR /usr/apps/hello-docker/

RUN apt-get -y update

RUN apt-get install -y nodejs

RUN apt-get install -y npm

#RUN ln -s /usr/bin/nodejs /usr/bin/node........;;;;;

RUN npm install -g http-server

ADD . /usr/apps/hello-docker/

ADD ./*.html /usr/apps/hello-docker/index.html

CMD ["http-server", "-s"]
