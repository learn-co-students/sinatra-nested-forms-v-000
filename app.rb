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
      @ship_one = Ship.new(params[:pirate][:ships].first[:name], params[:pirate][:ships].first[:type], params[:pirate][:ships].first[:booty])
      @ship_two = Ship.new(params[:pirate][:ships][1][:name], params[:pirate][:ships][1][:type], params[:pirate][:ships][1][:booty])

      erb :'pirates/show'
    end

  end
end
