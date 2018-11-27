require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
        erb :index
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do

      @pirate = Pirate.new(name: params[:pirate][:name], height: params[:pirate][:height], weight: params[:pirate][:weight])

      params[:pirate][:ships].each do |ship_data|
        ship = Ship.new
        ship.name = ship_data[:name]
        ship.type = ship_data[:type]
        ship.booty = ship_data[:booty]
        @pirate.ships << ship
      end
      erb :'pirates/show'
    end


  end
end
