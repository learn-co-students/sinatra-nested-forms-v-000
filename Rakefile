require 'pry'

# This was seriously fucking shit up...thse were loading up before
# there was a chance to load the Active Record libraries so when the
# models got loaded up, the program as a whole didn't yet recognize
# active record at all.

# require './app/models/pirate'
# require './app/models/privateer'
# require './app/models/ship'

ENV["SINATRA_ENV"] ||= "development"

require_relative './config/environment'
require 'sinatra/activerecord/rake'

# Type `rake -T` on your command line to see the available rake tasks.


namespace :db do
  desc 'lets you explore the program'
  task :console do
    Pry.start
  end
end
