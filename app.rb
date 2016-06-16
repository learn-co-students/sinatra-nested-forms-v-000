require './environment'
require 'pry'

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

      @pirate = Pirate.new(params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height])
      @ships = params[:pirate][:ships]

      @ships.each do |ship|
        Ship.new(ship.values[0], ship.values[1], ship.values[2])
      end

      ships = Ship.all
      @ship1 = ships[0]
      @ship2 = ships[1]

      erb :'pirates/show'
    end

  end
end
