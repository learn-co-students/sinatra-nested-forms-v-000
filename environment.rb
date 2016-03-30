ENV['SINATRA_ENV'] ||= "development"

require 'bundler'
Bundler.require(:default, ENV['SINATRA_ENV'])

require 'sinatra/base'
require 'sinatra/reloader'
require './models/pirate'
require './models/ship'

require_all './app'
