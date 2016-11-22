require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do 
      erb :index
    end

    post '/pirates' do 
      #binding.pry
      @pirate = Pirate.new(params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height])
      
      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end
 
      @ships = Ship.all

      erb :show
    end

    get '/new' do
      erb :new
    end

  end
end
