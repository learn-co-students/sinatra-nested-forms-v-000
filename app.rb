require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :index
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |ship_info|
        Ship.new(ship_info)
      end

      @ships = Ship.all

      erb :show
    end
  end
end
