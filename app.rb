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
      @pirate = Pirate.new(params)

      params[:pirate][:ships].each do|ship|
        Ship.new(ship)
      end

      @ships = Ship.all

      erb :show
    end

  end
end
