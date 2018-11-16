require './environment'
require 'pry'
module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
   get '/' do
     "<p>Welcome to the Nested Forms Lab! let's navigate to the '/new'</p>"

   end


    get '/new' do
    erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      @ship1 = Ship.new(params[:pirate][:ships][0])
      @ship2 = Ship.new(params[:pirate][:ships][1])
    erb :'pirates/show'
    end


  end
end
