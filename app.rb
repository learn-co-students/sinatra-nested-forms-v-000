require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do 
    	erb :root
    end

    get '/new' do 
    	erb :'pirates/new'
    end

    post '/pirates' do 
    	@pirate = Pirate.create_from_params(params["pirate"])
    	@ships = Ship.create_from_params(params["pirate"]["ships"])
    	erb :'pirates/show'
    end


  end
end
