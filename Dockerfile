FROM ruby:3.0.2-alpine3.14

RUN /httparty-cucumber

VOLUME /httparty-cucumber

WORKDIR /httparty-cucumber

ADD entrypoint.sh /

RUN chmod +x /entrypoint.sh