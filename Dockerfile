FROM ruby:2.7.6-bullseye

RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install vim

RUN  gem install bundler:2.3.26
COPY Gemfile Gemfile

RUN  bundle install
RUN  echo 'chico'
COPY job_example.rb job_example.rb
COPY demonstrate.rb demonstrate.rb
