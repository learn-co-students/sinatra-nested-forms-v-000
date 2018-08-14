require './environment'
require_relative 'app/models/pirate.rb'
require_relative 'app/models/ship.rb'
module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/pirate'
    end

    post '/pirates' do
      @pirate_info = Pirate.new(params[:pirate])
      params[:pirate][:ships].each do |ship|
        Ship.new(ship)
      end
      @ship_info = Ship.all
      erb :'pirates/show'
    end
  end
end
