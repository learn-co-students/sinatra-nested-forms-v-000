require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
		get '/' do
			erb :index
		end

		get '/new' do
			erb :new
		end

		post '/pirates' do
			@pirate = Pirate.new(params[:pirate])
			Ship.add_ships(params[:pirate][:ships])
			@ships = Ship.all
			erb :show
		end
  end
end
