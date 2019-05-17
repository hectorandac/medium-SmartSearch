FROM ruby:2.6.1

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN curl -o /usr/local/bin/ecs-cli https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-latest
RUN chmod +x /usr/local/bin/ecs-cli

RUN mkdir /smart-search
WORKDIR /smart-search

COPY Gemfile /smart-search/Gemfile
COPY Gemfile.lock /smart-search/Gemfile.lock

COPY . /smart-search

RUN gem install bundler
RUN bundle check || bundle install

RUN bundle exec rails test

EXPOSE 3000

CMD bundle exec rails server -b 0.0.0.0