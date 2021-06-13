FROM debian:buster

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update \
 && apt-get install -y git golang

COPY docker.build.sh /
RUN chmod +x /docker.build.sh \
 && /docker.build.sh
WORKDIR /go/src/bosun.org/

CMD [ "/start.sh" ]
