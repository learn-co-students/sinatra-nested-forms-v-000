require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :new
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do

      @hook = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |ship|
        Ship.new(ship)
      end

      @ships = Ship.all

      erb :display
    end

  end
end
