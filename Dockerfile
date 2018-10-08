FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /omniauthapp
WORKDIR /omniauthapp
COPY Gemfile /omniauthapp/Gemfile
COPY Gemfile.lock /omniauthapp/Gemfile.lock
RUN bundle install
COPY . /omniauthapp
