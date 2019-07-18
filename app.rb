require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base
  # code other routes/actions here
    get '/' do
     erb :root
    end

    get '/new' do
     erb :new
    end

    post '/pirates' do
     @pirate = Pirate.new(params["pirate"])
     ships = params["pirate"]["ships"]
     #binding.pry
     @ship_1 = Ship.new(ships[0])
     @ship_2 = Ship.new(ships[1])
     erb :show
    end
  end
end
