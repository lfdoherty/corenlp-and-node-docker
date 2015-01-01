FROM lfdoherty/corenlp
MAINTAINER Liam Doherty <lfdoherty@gmail.com>
RUN cd app && wget http://nodejs.org/dist/v0.10.35/node-v0.10.35.tar.gz
RUN cd app && tar -xf node-v0.10.35.tar.gz
RUN sudo apt-get update
RUN sudo apt-get install -y python
RUN cd app && cd node-v0.10.35 && ./configure && sudo make install