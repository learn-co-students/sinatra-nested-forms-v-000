require './environment'

module FormsLab
  class App < Sinatra::Base
    
    get '/' do
      "Welcome to the Nested Forms Lab! let's navigate to the '/new'"
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate][:name], params[:pirate][:height], params[:pirate][:weight])
      @ships = params[:pirate][:ships].map do |ship_params|
        Ship.new(ship_params[:name], ship_params[:type], ship_params[:booty])
      end
      
      erb :"pirates/show"
    end
  end
end
