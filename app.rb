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
      # binding.pry
    end

    post '/pirates' do
      @ships = []
      @pirate = Pirate.new(params[:pirate])
      params[:pirate][:ships].each do |ship_data|
        ship = Ship.new(ship_data)
        @ships << ship
      end

      erb :'pirates/show'

    end

  end
end
