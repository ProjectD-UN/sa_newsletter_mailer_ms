FROM ruby:2.5.1

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /newsletter-api
WORKDIR /newsletter-api

COPY Gemfile /newsletter-api/Gemfile
COPY Gemfile.lock /newsletter-api/Gemfile.lock

RUN bundle install

COPY . /newsletter-api