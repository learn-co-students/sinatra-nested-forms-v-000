require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do 
      erb :'pirates/new'
      # '<form>pirate[name]pirate[weight]pirate[height]pirate[ships][][name]pirate[ships][][type]pirate[ships][][booty]</form>'
    end

    post '/pirates' do
      # @pirate = Pirate.new(params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height])
      # @ship = Ship.new(params[:pirate][:ships][0][:name], params[:pirate][:ships][0][:type], params[:pirate][:ships][0][:booty])
      # @ship2 = Ship.new(params[:pirate][:ships][1][:name], params[:pirate][:ships][1][:type], params[:pirate][:ships][1][:booty])
      # erb :'pirates/show'

        @pirate = Pirate.new(params[:pirate])
        params[:pirate][:ships].each do |details|
          Ship.new(details)
          
        # binding.pry
        end

  @ships = Ship.all

  erb :"pirates/show"

    end   

  end
end
