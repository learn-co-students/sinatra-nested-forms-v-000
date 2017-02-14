require './environment'

module FormsLab
  class App < Sinatra::Base

    get "/" do
      erb :root
    end

    get "/new" do  
      erb :'pirates/new'
    end

    post "/pirates" do
      pirate = params[:pirate]
      ship = pirate[:ships]
        
      @pirate = Pirate.new(pirate[:name], pirate[:weight], pirate[:height])
      @ship1 = Ship.new(ship[0][:name], ship[0][:type], ship[0][:booty])
      @ship2 = Ship.new(ship[1][:name], ship[1][:type], ship[1][:booty])
      # binding.pry
      erb :'pirates/show'    
    end

 
  end
end
