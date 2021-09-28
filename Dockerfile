FROM ruby:2.5-alpine3.10

ENV LANG C.UTF-8

RUN apk --no-cache add snappy

RUN apk update && apk --no-cache add make gcc libc-dev libxml2 libxslt-dev g++ ruby ruby-dev ruby-bundler ruby-json ruby-irb ruby-rake ruby-bigdecimal curl autoconf libtool automake build-base libexecinfo snappy libexecinfo-dev

VOLUME /httparty-cucumber

WORKDIR /httparty-cucumber

COPY . .

RUN chmod +x entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]