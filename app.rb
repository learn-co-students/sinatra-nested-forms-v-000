require './environment'
require_relative 'models/pirates.rb'
require_relative 'models/ships.rb'

module FormsLab
  class App < Sinatra::Base

   get '/' do 
     erb :greeting
   end
   
   get '/new' do 
     erb :new
   end
   
   post '/pirates' do
     @pirate = Pirates.new(params[:pirate][:name],params[:pirate][:weight],params[:pirate][:height])
     @ships=[]
     params[:pirate][:ships].each do |ship|
       @ships << Ships.new(ship)
     end
     erb :show
   end

  end
end
