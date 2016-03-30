require './environment'
require_relative 'models/pirate.rb'
require_relative 'models/ship.rb'
require 'pry'


module FormsLab
  class App < Sinatra::Base

    get "/" do
    	erb :root
    end

    get "/new" do
    	erb "/pirates/new".to_sym

    end

    post "/pirates" do

      Ship.clear
    	@pirate = Pirate.new(params[:pirate])
    	params[:pirate][:ships].each do |info|
    		
        Ship.new(info)

  		end
      #binding.pry
  		@ships = Ship.all

  		erb "pirates/show".to_sym
      
  	end

  end
end
