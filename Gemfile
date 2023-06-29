# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.2"

gem "bootsnap", require: false
gem "bootstrap", "~> 5.3.0.alpha3"
gem "config"
gem "devise", "4.8.1"
gem "dotenv-rails", "2.8.1", require: "dotenv/rails-now"
gem "i18n"
gem "importmap-rails"
gem "jbuilder"
gem "jquery-rails"
gem "kaminari", "1.2.2"
gem "pg", "1.4.5"
gem "puma", "~> 5.0"
gem "rails", "~> 7.0.5"
gem "redis", "5.0.5"
gem "sassc", "~> 2.4"
gem "sidekiq", "7.0.2"
gem "sprockets-rails"
gem "stimulus-rails"
gem "turbo-rails"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "faker", "3.1.0"
  gem "parser", "3.2.1.0"
  gem "rspec-rails", "6.0.1"
  gem "rubocop-rails", "2.17.4", require: false
end

group :development do
  gem "pry", "0.14.2"
  gem "web-console"
end

group :test do
  gem "simplecov", require: false
end
