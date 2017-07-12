require 'pry'
require './environment'
#require_relative './models/pirate.rb'
#require_relative './models/ship.rb'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    # in get actions, define the instance variables to be used in the view pages
    get '/' do
      @pirates = Pirate.all
      erb :'pirates/index'
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate= Pirate.new(params[:pirate])
      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end
      @ships = Ship.all
      erb :'pirates/show'
    end
  end
end
