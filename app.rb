require './environment'
require 'pry'
module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do 
      "Welcome to the Nested Forms Lab!\nlet's navigate to the '/new'"
    end

    get '/new' do 
      erb :new
    end

    post '/pirates' do 
      @pirate = Pirate.new(params[:pirate])
      params[:pirate][:ships].each do |ship|
        # binding.pry
        Ship.new(ship)
      end
      @ships = Ship.all
      erb :"pirates/show"
    end
  end
end
