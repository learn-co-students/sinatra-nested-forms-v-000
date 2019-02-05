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
    	@pirate = Pirate.new(params[:user_input])

    	params[:pirate][:ships].each do |args|
    		Ship.new(args)
    	end

    	@ships = Ship.all

    	erb :show
    end

  end
end
