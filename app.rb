require './environment'
require_relative './app/models/pirate.rb'
require_relative './app/models/ship.rb'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :index
    end
    
    get '/new' do
      erb :'pirates/new'
    end
    
    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      @ships = Ship.all
      erb :'pirates/show'
    end
    
  end
end
