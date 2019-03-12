source "https://rubygems.org"

gem 'sinatra', require: 'sinatra/base'
gem 'sinatra-reloader', require: false
gem 'shotgun'
gem 'pry'
gem 'tux'
gem 'require_all'

#gems for persistance
gem 'sqlite3', '~> 1.3.6' #this was necessary because of already having 1.4 which was causing issues
gem 'activerecord', :require => 'active_record'
gem 'sinatra-activerecord', :require => 'sinatra/activerecord'
gem 'rake'


group :test do
  gem 'rspec'
  gem 'rack-test'
  gem 'capybara'
end
