require './environment'

module FormsLab
  
  class App < Sinatra::Base

    get '/' do
      erb :index
    end
  
   get '/new' do
      erb :'pirates/new'
   end
   
   post '/pirates' do
    puts "****************************"
     puts params[:pirate][:ships]
     puts "*****************************"
     @pirate = Pirate.new(params[:pirate])
     ships = params[:pirate][:ships]
     ships.each do |ship_details|
       Ship.new(ship_details)
     end
     @ships = Ship.all
     erb :'/pirates/show'
   end
   
  end #class
  
end #module
