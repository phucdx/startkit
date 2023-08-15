FROM ruby:3.1.2

ENV APP_PATH /startkit

ENV BUNDLE_VERSION 2.3.17

RUN apt-get update -qq && apt-get install -y postgresql-client && rm -rf /var/lib/apt/lists/*

RUN gem install bundler --version "$BUNDLE_VERSION"

WORKDIR $APP_PATH

COPY Gemfile Gemfile.lock $APP_PATH/

RUN bundle install

COPY . $APP_PATH

COPY entrypoint.sh /usr/bin/

RUN chmod +x /usr/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3000
