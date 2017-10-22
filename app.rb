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
      # binding.pry
      @ship_1 = Ship.new(params[:pirate][:ships][0])
      @ship_2 = Ship.new(params[:pirate][:ships][1])
      # params[:pirate][:ships].each do |details|
      #   Ship.new(details)
      # end

      # @ships = Ship.all
      erb :"pirates/show"
    end
  end
end
