FROM node:8.9-alpine

ENV HOME /root
WORKDIR /root

# install tini to properly handle zombie reaping & signal comm
RUN apk add --no-cache tini
ENTRYPOINT ["/sbin/tini", "--"]
