FROM hypriot/rpi-alpine-scratch
# FROM alpine

RUN apk update

RUN apk add python

# Remove cache
RUN rm -rf /var/cache/apk/*

RUN mkdir /downloads

VOLUME /downloads

WORKDIR /downloads

EXPOSE 9090

CMD ["/usr/bin/python", "-m", "SimpleHTTPServer", "9090"]
