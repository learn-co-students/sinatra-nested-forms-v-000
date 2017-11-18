require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do

	end
    
    get '/new' do
		erb :new
	end
	
	post '/pirates' do
		@pirate = Pirate.new(params[:pirate])

		params[:pirate][ships].each do |info|
			Ship.new(info)
		end

		@ships = Ship.all
		erb :'pirates/show'
	end 

  end
end
