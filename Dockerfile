# FROM debian:wheezy
FROM node:5.5.0-slim
RUN apt-get update && apt-get install -y \
        ca-certificates \
        curl

# verify gpg and sha256: http://nodejs.org/dist/v0.10.31/SHASUMS256.txt.asc
# gpg: aka "Timothy J Fontaine (Work) <tj.fontaine@joyent.com>"
RUN gpg --keyserver pgp.mit.edu --recv-keys 7937DFD2AB06298B2293C3187D33FF9D0246406D

ENV RANETO_VERSION 0.8.0 

RUN curl -SLO "https://github.com/gilbitron/Raneto/archive/$RANETO_VERSION.tar.gz" \
    && mkdir /raneto \
    && tar -xzf "$RANETO_VERSION.tar.gz" -C /raneto --strip-components=1 \
    && rm "$RANETO_VERSION.tar.gz"

RUN apt-get install -y git

WORKDIR /raneto
RUN npm update && npm run gulp
RUN npm install --unsafe-perm
# RUN sed -i -e's:./content:/data/raneto:' /raneto/config.js

EXPOSE  3000

ADD run.sh /run.sh
ENTRYPOINT [ "/run.sh" ]