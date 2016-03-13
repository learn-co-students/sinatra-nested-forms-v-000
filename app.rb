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
        @p = params[:pirate][:ships]

    	@pirates = Pirate.new(params[:pirate])

    	params[:pirate][:ships].each do |ship|
    		Ship.new(ship)
    	end

        @ships = Ship.all

    	@ship1 = Ship.all[0]
        @ship2 = Ship.all[1]

    	erb :'pirates/show'
    end

  end
end
