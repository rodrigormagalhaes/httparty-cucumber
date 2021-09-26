FROM ruby:3.0.2-alpine3.14

RUN apk update && apk --no-cache add make gcc libc-dev libxml2 libxslt-dev g++ curl autoconf libtool automake build-base libexecinfo snappy libexecinfo-dev

WORKDIR /httparty-cucumber

COPY . .

RUN chmod +x entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]