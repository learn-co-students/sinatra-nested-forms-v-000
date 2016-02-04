require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :'/pirates/index'
    end

    get '/new' do
      erb :'/pirates/new'
    end

    post '/pirates' do
      name, weight, height = params[:pirate].values
      @new_pirate = Pirate.new(name, weight, height)
      
      params[:pirate][:ships].each do |ship|
        name, type, booty = ship.values
        @new_ship = Ship.new(name, type, booty)
      end

      @ships = Ship.all

      erb :'/pirates/show'
    end

  end
end
