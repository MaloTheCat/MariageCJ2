source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.6'
gem 'rails', '~> 6.1.3', '>= 6.1.3.2'
gem 'puma', '~> 5.0'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'bootsnap', '>= 1.4.4', require: false

# adding my gems
gem 'airrecord'
gem 'simple_form'
gem 'dotenv-rails'
gem 'pg', '>= 0.18', '< 2.0'
gem 'cloudinary'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # gem 'dotenv-rails'
  gem 'sqlite3', '~> 1.4'
end

group :development do
  gem 'web-console', '>= 4.1.0'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  gem 'spring'
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
