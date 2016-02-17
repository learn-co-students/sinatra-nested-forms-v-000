require './environment'

module FormsLab
  class App < Sinatra::Base


   get '/' do
    erb :index
   end

   get '/new' do
    erb :"pirates/new"
   end

   post '/pirates' do

    @yar = Pirate.new(params[:pirate])
    params[:pirate][:ships].each {|ship|
      Ship.new(ship)
    }

    @ships = Ship.all
    @ships.delete_if{|ship| ship.name.empty?}

    erb :"pirates/show"
   end

   get '/pirates' do  
    erb :"pirates/show"
   end

  end
end
