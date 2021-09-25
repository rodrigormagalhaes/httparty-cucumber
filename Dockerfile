FROM ruby:3.0.2-alpine3.14

ADD entrypoint.sh /

RUN chmod +x /entrypoint.sh