require './environment'
#require_relative './views/pirates/new.erb'
#require_relative './views/pirates/show.erb'
module FormsLab
    class App < Sinatra::Base
        get '/' do
            "Welcome to the Nested Forms Lab!\n let's navigate to the '/new'" 
        end
        
        get '/new' do
            erb :'pirates/new'
        end
        
        
        post '/pirates' do
            @pirate = Pirate.new(params[:pirate])
            
            params[:pirate][:ships].each do |ship|
                Ship.new(ship) 
            end
#Ship.new(name: params[:ship_name_1],type: params[:ship_type_1],booty: params[:ship_booty_1])
#Ship.new(name: params[:ship_name_2],type: params[:ship_type_2],booty: params[:ship_booty_2])            
            
            @ships = Ship.all
            
            erb :'pirates/show'
        end
    end
end
