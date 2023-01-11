FROM ubuntu:latest

RUN apt-get update && apt-get install -y sudo

USER root
ENV HOME /root

EXPOSE 8080
CMD ["socat", "-T600", "TCP-LISTEN:8080,reuseaddr,fork", "EXEC:'/bin/bash'"]

