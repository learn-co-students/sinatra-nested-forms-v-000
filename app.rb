require './environment'

module FormsLab
  class App < Sinatra::Base
		#set :views, Proc.new {"views/pirates"} 

    # code other routes/actions here

		get "/" do 
			erb :root
		end

		get "/new" do 
			erb File.read("views/pirates/new.erb")
		end

		post "/pirates" do 
			pirate_hash = params[:pirate]
			@pirate = Pirate.new(pirate_hash[:name],pirate_hash[:weight],pirate_hash[:height])
			@ships = pirate_hash[:ships].collect do |ship_hash|
				Ship.new(ship_hash[:name], ship_hash[:type], ship_hash[:booty])
			end
			erb File.read("views/pirates/show.erb")
		end

  end
end
