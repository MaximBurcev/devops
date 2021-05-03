FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
COPY id_rsa /root/.ssh/id_rsa
RUN chmod 600 /root/.ssh/id_rsa
RUN apt-get update && \
    apt-get install -y git default-jdk maven docker.io && \
    apt-get clean