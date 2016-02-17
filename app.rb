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
# binding.pry
    params[:pirate][:ships].each {|ship|
      Ship.new(ship)
    }

    @ships = Ship.all

    erb :"pirates/show"
   end

   get '/pirates' do
    
    erb :"pirates/show"
   end

  end
end
