ENV['SINATRA_ENV'] ||= "development"

require 'bundler'
Bundler.require(:default, ENV['SINATRA_ENV'])

require 'sinatra/base'
require 'sinatra/reloader'

require './app'

Dir[File.join(File.dirname(__FILE__), "../views/pirates", "*.erb")].each {|f| require f}
