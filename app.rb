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
      @pirates = Pirate.new(params[:pirate])
      @ships = []
      params[:pirate][:ships].each do |ship|
        @ships << Ship.new(ship)
      end
      
      erb :'pirates/show'
    end

  end
end
