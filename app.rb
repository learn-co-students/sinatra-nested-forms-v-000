require './environment'
require 'pry'
module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
   get '/' do
     erb :root
   end

   get '/new' do
     erb :'pirates/new'

   end

   post '/pirates' do
     pirate_hash = params[:pirate]
     @pirate = Pirate.new(pirate_hash[:name],pirate_hash[:weight],pirate_hash[:height])
     @ships = pirate_hash[:ships].collect {|ship|
     Ship.new(ship[:name],ship[:type],ship[:booty])}
     erb :'pirates/show'
     end
  end
end
