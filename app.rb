require './environment'
require 'pry'
module FormsLab
  class App < Sinatra::Base

   get '/' do 
     erb :'root'
   end
   
   get '/new' do
      erb :'pirates/new'	
   end

   post '/pirates' do
     @pirates = Pirate.all
     @ships = Ship.all
     Pirate.new(params[:pirate])
      ships = params[:pirate][:ships]
      ships.each {|ship| Ship.new(ship)}
     erb :'pirates/show'
   end

  end
end
