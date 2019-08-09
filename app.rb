require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do
      @pirate = Pirate.new
      @pirate.name = params[:pirate][:name]
      @pirate.weight = params[:pirate][:weight]
      @pirate.height = params[:pirate][:height]
      @ship_1 = Ship.new
      @ship_1.name = params[:pirate][:ships][0][:name]
      @ship_1.type = params[:pirate][:ships][0][:type]
      @ship_1.booty = params[:pirate][:ships][0][:booty]
      @ship_2 = Ship.new
      @ship_2.name = params[:pirate][:ships][1][:name]
      @ship_2.type = params[:pirate][:ships][1][:type]
      @ship_2.booty = params[:pirate][:ships][1][:booty]
      erb :show
    end
  end
end
