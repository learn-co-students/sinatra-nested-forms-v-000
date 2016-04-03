require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :new
    end


    post '/pirates' do
      puts params
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |ship|
        #binding.pry
        Ship.new(ship)
      end

      @ships = Ship.all

      erb :show
    end
  end
end
