source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.8'

gem 'rake'

gem 'settingslogic'

# Use postgresql as the database for ActiveRecord
gem 'pg'
gem 'pg_array_parser'
gem 'bcrypt-ruby'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'

# Use LESS for stylesheets
gem 'less-rails', '~>2.6.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'execjs'
gem 'therubyracer',  platforms: :ruby

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

gem 'react-rails', '~> 1.0.0.pre', github: 'reactjs/react-rails'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc


# rake и generator комманды в консоли
gem 'commands'

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring', group: :development


group :development, :test do
  gem 'factory_girl_rails'
  gem "rspec-rails"#, ">= 2.11.0"
  gem 'capybara'
  gem 'rb-inotify', '~> 0.9', :require => false
  gem 'guard-rspec'
  gem 'pry-rails'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

group :production do
  gem 'rails_12factor'
end

ruby "2.1.5"

