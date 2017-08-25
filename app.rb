require './environment'

module FormsLab
  class App < Sinatra::Base

     get '/' do
       erb :root
     end

     get '/new' do
       erb :new
     end

     post '/pirates' do
       show = params
       pirate = show[:pirate]
       @ships = pirate[:ships]
       @new_pirate = Pirate.new(pirate)
       @ships.each do |ship|
         Ship.new(ship)
       end
       @ship_1 = Ship.all[0]
       @ship_2 = Ship.all[1]

      erb :show
     end

  end
end
