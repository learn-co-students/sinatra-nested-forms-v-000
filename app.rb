require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do
      erb :"root"
    end

    get '/new' do
      erb :"pirates/new"
    end



    post '/pirates' do
      @pirate = Pirate.new
      @pirate.name = params[:pirate][:name]
      @pirate.weight = params[:pirate][:weight]
      @pirate.height= params[:pirate][:height]

      #pirate[ships][][booty]
      params[:pirate][:ships].each do |ship_data|
          ship = Ship.new(ship_data)
          @pirate.ships << ship
      end



      erb :"pirates/show"

    end


  end
end
