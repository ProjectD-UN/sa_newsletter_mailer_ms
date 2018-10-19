FROM ruby:2.5-alpine

RUN apk update && apk add build-base libxml2-dev libxslt-dev nodejs postgresql-dev
RUN mkdir /sa_newsletter_mailer_ms
WORKDIR /sa_newsletter_mailer_ms
COPY . /sa_newsletter_mailer_ms

RUN gem update bundler

COPY Gemfile /sa_newsletter_mailer_ms/Gemfile
COPY Gemfile.lock /sa_newsletter_mailer_ms/Gemfile.lock

RUN bundle install


