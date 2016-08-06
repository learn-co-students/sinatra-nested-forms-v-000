require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    get '/' do
    	erb :index
    end

    get '/new' do
    	erb :"pirates/new"
    end

    post '/pirates' do
    	@pirate = Pirate.new(params[:pirate])

    	params[:pirate][:ships].each do |details|
    		Ship.new(details)
    	end

    	erb :"pirates/show"
    end

    @ships = Ship.all

  end
end
