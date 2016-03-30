ENV['SINATRA_ENV'] ||= "development"

require 'bundler'
Bundler.require(:default, ENV['SINATRA_ENV'])

require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'models/pirate.rb'
require_relative 'models/ship.rb'

require_all './app'
