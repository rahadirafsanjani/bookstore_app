source "https://rubygems.org"

gem "rails", "~> 7.2.1"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[windows jruby]
gem "bootsnap", require: false

group :development, :test do
  gem "dotenv-rails"
  gem "debug", platforms: %i[mri windows], require: "debug/prelude"
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
  gem "rspec-rails", "~> 7.0"
  gem "factory_bot_rails", "~> 6.4"
  gem "pry"
  gem "ostruct"
end

group :development do
  gem "web-console"
end

# Test-only gems
group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "simplecov", require: false
end

gem "devise", "~> 4.9"

gem "tailwindcss-rails", "~> 3.0"

gem "pagy", "~> 9.1"

gem "faker", "~> 3.4"

gem "sidekiq", "~> 7.3"

gem "letter_opener", "~> 1.10"

gem "sinatra", "~> 4.0"
