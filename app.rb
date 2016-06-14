require './environment'


module FormsLab
  class App < Sinatra::Base
    get '/' do 
      "Welcome to the Nested Forms Lab! let's navigate to the '/new'"
    end
    
    get '/new' do 
      erb :new
    end
    
    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      Ship.new(params[:pirate][:ships][0])
      Ship.new(params[:pirate][:ships][1])

      @ships = Ship.all 
      erb :show
    end
  end
end
