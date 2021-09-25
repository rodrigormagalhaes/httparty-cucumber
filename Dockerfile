FROM ruby:3.0.2-alpine3.14

RUN mkdir /httparty-cucumber

VOLUME /httparty-cucumber

WORKDIR /httparty-cucumber

ADD entrypoint.sh /

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]