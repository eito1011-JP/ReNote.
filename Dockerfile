ARG RUBY_VERSION
FROM ruby:3.02

ARG BUNDLER_VERSION

# linux-headers: raindrops
ENV BASE_PACKAGES="bash curl-dev ruby-dev build-base git openssl less"\
    DEV_PACKAGES="zlib-dev libxml2-dev libxslt-dev tzdata yaml-dev mysql-dev ruby-json yaml nodejs yarn"\
    GEM_PACKAGES="linux-headers"

RUN apk update &&\
    apk upgrade &&\
    apk add --update --no-cache\
    $BASE_PACKAGES\
    $DEV_PACKAGES\
    $GEM_PACKAGES

ENV LANG=C.UTF-8\
    GEM_HOME=/bundle\
    BUNDLE_JOBS=4\
    BUNDLE_RETRY=3
ENV BUNDLE_PATH $GEM_HOME
ENV BUNDLE_APP_CONFIG=$BUNDLE_PATH\
    BUNDLE_BIN=$BUNDLE_PATH/bin
ENV PATH /app/bin:$BUNDLE_BIN:$PATH

RUN gem update --system &&\
    gem install bundler:$BUNDLER_VERSION &&\
    gem install rails &&\
    mkdir -p /app

WORKDIR /app

VOLUME /app/public
VOLUME /app/tmp

ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
ADD . /app
