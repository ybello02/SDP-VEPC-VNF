FROM ubuntu:14.04

EXPOSE 5000
EXPOSE 22
WORKDIR /controller
ENV DB_HOST=$HOSTNAME
ENV IP=$SDPNETWORK
COPY * /controller/
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
RUN ./install.sh
RUN ./setupMySQL.sh
RUN ./certs.sh
CMD ["/bin/bash", "-c","/controller/run.sh"]


