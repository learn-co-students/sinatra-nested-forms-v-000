require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
    	erb :root #why? 
	end
    
    get '/new' do
		erb :'pirates/new'
	end
	
	post '/pirates' do
		@pirate = Pirate.new(params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height])

		params[:pirate][:ships].each do |name, type, booty|
			Ship.new(name, type, booty)
		end

		@ships = Ship.all

		erb :'pirates/show'
	end 

  end
end
