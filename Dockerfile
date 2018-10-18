FROM ruby:2.5.1

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /sa_newsletter_ms
WORKDIR /sa_newsletter_ms

COPY Gemfile /sa_newsletter_ms/Gemfile
COPY Gemfile.lock /sa_newsletter_ms/Gemfile.lock

RUN bundle install

COPY . /sa_newsletter_ms