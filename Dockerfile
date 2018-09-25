FROM ruby:2.6-rc-alpine3.8

RUN mkdir /app

RUN apk update && \
      apk upgrade && \
      apk add --no-cache \
      git
RUN gem install specific_install

ENV DEV_BRANCH master
ENV REPO https://github.com/kamina91/sinatra.git
RUN gem specific_install $REPO $DEV_BRANCH
