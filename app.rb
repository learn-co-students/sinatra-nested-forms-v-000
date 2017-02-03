require './environment'
require 'pry'
module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end
      # binding.pry
      @ships = Ship.all
      @ship_1 = @ships[0]
      @ship_2 = @ships[1]

      erb :"pirates/show"
    end

  end
end
