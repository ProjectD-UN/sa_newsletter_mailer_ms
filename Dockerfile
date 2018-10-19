FROM ruby:2.5.3-stretch

RUN apt-get update -qq && apt-get install -y build-dependencies build-base libpq-dev nodejs postgresql-dev tzdata

RUN mkdir /usr/src/sa_newsletter_mailer_ms
WORKDIR /usr/src/sa_newsletter_mailer_ms
COPY . /usr/src/sa_newsletter_mailer_ms

RUN gem update bundler

COPY Gemfile /usr/src/sa_newsletter_mailer_ms/Gemfile
COPY Gemfile.lock /usr/src/sa_newsletter_mailer_ms/Gemfile.lock

RUN bundle install
RUN DB_ADAPTER=nulldb bundle exec rake assets:precompile

