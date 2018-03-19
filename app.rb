require './environment'
require './app/models/pirates'
require './app/models/ships'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end
    
    get '/new' do
      erb :'pirates/new'
    end
    
    post '/pirates' do
      @nu_pirate = Pirate.new(params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height])
      @nu_ship1 = Ship.new(params[:pirate][:ships][0][:name], params[:pirate][:ships][0][:type], params[:pirate][:ships][0][:booty])
      if params[:pirate][:ships].length > 1
        @nu_ship2 = Ship.new(params[:pirate][:ships][1][:name], params[:pirate][:ships][1][:type], params[:pirate][:ships][1][:booty])
      end
      erb :'/pirates/show'
    end
    
  end
end
