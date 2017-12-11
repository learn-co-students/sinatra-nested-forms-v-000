require './environment'

module FormsLab
  class App < Sinatra::Base

     get '/' do
       erb :'pirates/index'
     end

     get '/new' do
       erb :'pirates/new'
     end

     post '/pirates' do
       @pirate = Pirate.new(params[:pirate])

       params[:pirate][:ships].each do |ship_data|
         Ship.new(ship_data)
       end
       @ships = Ship.all

       erb :'pirates/show'

     end

  end
end

#redirect to "/pirates/#{pirate.id}"
#  get '/pirates/:id' do
#    @pirate = Pirate.find(params[:id])
 #
#    erb :'pirates/show'
#  end
