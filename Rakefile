ENV['SINATRA_ENV'] ||= "development"

require_relative './config/environment'
require 'sinatra/activerecord/rake'

# Type 'rake -T' on your command linen to see te available rake tasks.
task :environment do
  require_relative'./config/environment'
end

task :console => :environment do
  Pry.start  
end 

def reload! 
  load './config/environment.rb'
end
