source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.2"

gem "bootsnap", require: false
gem "config"
gem "devise", "4.8.1"
gem "dotenv-rails", "2.8.1", require: "dotenv/rails-now"
gem "importmap-rails"
gem "jbuilder"
gem "kaminari", "1.2.2"
gem "pg", "1.4.5"
gem "puma", "~> 5.0"
gem "rails", "~> 7.0.5"
gem "redis", "5.0.5"
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
end

group :development do
  gem "web-console"
  gem "pry", "0.14.2"
end

group :test do
  gem "simplecov", require: false
end
