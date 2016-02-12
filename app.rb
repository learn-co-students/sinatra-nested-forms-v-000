require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

	get '/' do
		erb :root
	end    
	
	get '/new' do
		erb :'pirates/new'
	end
	
	post '/pirates' do
		@pirate = Pirate.new(params[:pirate])
		@pirate.ships.each do |x|
			Ship.new(x)
		end
		erb :'pirates/show'
	end

  end
end
