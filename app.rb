require './environment'
require './models/pirate.rb'
require './models/ship.rb'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :index
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do 
      @pirate = Pirate.new(params[:pirate])
      @ships = []
      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end
      @ships = Ship.all


      erb :show
    end
  end
end
