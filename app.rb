require './environment'
#require_relative './models/pirate.rb'
#require_relative './models/ship.rb'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :'pirates/index'
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate=Pirate.new(params[:pirate])
      Params[:pirate][:ships].each do |details|
        Ship.new(details)
      end
      @ships = Ship.all
      erb :'pirates/show'
    end

    get '/ships' do
      erb :'ships/index'
    end


  end
end
