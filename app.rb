require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    get '/' do 
      erb :root
    end 

    get '/new' do 
      erb :'pirates/new'
    end 

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      ships = params[:pirate][:ships]

      ships.collect do |ship_info|
        Ship.new(ship_info)
      end 

      @ships = Ship.all 

      erb :'pirates/show'
    end

  end
end
