require './environment'
require_relative 'models/pirate.rb'
require_relative 'models/ship.rb'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      #create a new pirate based on
      @pirate = Pirate.new(name: params[:pirate][:name], weight: params[:pirate][:weight], height: params[:pirate][:height])

      #create ships for each one in the array
      params[:pirate][:ships].each do |ship|
        new_ship = Ship.new(name: ship[:name], type: ship[:type], booty: ship[:booty])
      end

      @ships = Ship.all

      erb :'pirates/show'
    end

  end
end