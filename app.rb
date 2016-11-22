require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do 
      erb :index
    end

    post '/pirates' do 
      @pirate = Pirate.new(params)
      
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
