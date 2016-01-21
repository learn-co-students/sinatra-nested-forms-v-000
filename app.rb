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


    @pirate = Pirate.new(params)
    @ships = []
    params[:pirate][:ships].each do |one_ship_hash|
      @ships << Ship.new(one_ship_hash)
    end 
    @pirate.ships = @ships

    erb :'pirates/show'
  end 
  


  end
end
