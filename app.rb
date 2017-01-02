require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      if params[:pirate]
        @pirate = Pirate.new(params[:pirate])
      end

      if params[:pirate][:ships][0]
        @ship1 = Ship.new(params[:pirate][:ships][0])
      end

      if params[:pirate][:ships][1]
        @ship2 = Ship.new(params[:pirate][:ships][1])
      end
      binding.pry

      erb :'pirates/show'
    end
  end
end
