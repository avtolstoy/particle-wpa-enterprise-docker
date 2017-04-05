FROM ubuntu:14.04.5

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
  apt-get install -y apt-utils

RUN apt-get install -y --no-install-recommends apt-transport-https ca-certificates sudo wget curl \
  software-properties-common supervisor

# Install FreeRADIUS
RUN add-apt-repository -y ppa:freeradius/stable && \
    apt-get update && \
    apt-get install -y freeradius

# Install git
RUN apt-get update && \
  apt-get install -y git

# Copy distribution files
COPY files/ /

# Expose FreeRADIUS
EXPOSE 1812/udp 1813/udp

ENTRYPOINT ["/docker-entrypoint.sh"]
