require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height])
      params[:pirate][:ships].each { |ship|
        Ship.new(ship[:name], ship[:type], ship[:booty])
      }
      @ships = Ship.all
      erb :'pirates/show'
    end

  end
end
