require './environment'

module FormsLab
  	class App < Sinatra::Base
	  	get '/' do
	  		erb :'index'
	  	end

		get '/new' do
			erb :'pirates/new'
		end

		post '/pirates' do
			#binding.pry
			@pirate = Pirate.new(params[:pirate])

			params[:pirate][:ships].each do |details|
				Ship.new(details)
			end

			@ships = Ship.all
			#collect data from form and create instances
			erb :'pirates/show'
		end
	end
end
