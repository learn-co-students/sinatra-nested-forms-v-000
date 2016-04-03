require './environment'
#require 'app/models/pirate.rb'
#require 'app/models/ship.rb'
require 'pry'
module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      @ships = params[:pirate][:ships].each do |ship| 
        Ship.new(ship)
      end
      #binding.pry
      erb :"pirates/show"
    end
  end
end
