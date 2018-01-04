ENV["SINATRA_ENV"] = "test"
require_relative '../config/environment'
require 'rack/test'
require 'capybara/dsl'

require 'capybara/rspec' # I added this in an attempt to fix the bug discussed in ./app/models/pirate.rb

RSpec.configure do |config|
  config.include Capybara::DSL
  config.include Rack::Test::Methods
  config.order = 'default'
end

def app
  Rack::Builder.parse_file('config.ru').first
end

Capybara.app = app
