require './environment'

module FormsLab
  class App < Sinatra::Base
  	set :views, Proc.new { File.join(root, "views/pirates") }

    # code other routes/actions here
    get '/' do 
    	erb :index
    end

    get '/new' do
    	erb :new

    end

    post '/pirates' do 
    	@pirate = Pirate.new(params[:pirate])

    	params[:pirate][:ships].each do |ship_hash|
    		Ship.new(ship_hash)
    	end

    	@ships = Ship.all
		erb :show

    end

  end
end
