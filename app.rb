require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
    	erb :root
    end

    get '/new' do
    	erb :"pirates/new"
    end
    
    post '/pirates' do
    	
    	@pirate = Pirate.new(params["pirate"].select{|k,v| k != "ships"})
      params["pirate"]["ships"].each do |ship_data|
      	ship = Ship.new(ship_data)
      	ship.pirate = @pirate
      	ship.save
      	#save the pirate and assosiate it with the ships 
      end
  	  @ships = Ship.all 
      
    	erb :"pirates/show"
    end

  end
end
