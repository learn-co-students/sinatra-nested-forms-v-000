require './environment'

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

      params[:pirate][:ships].each do |ship_details| #send ship.new a set of hashes
        Ship.new(ship_details)
      end

      @ships = Ship.all #array of objects

      erb :"pirates/show"
    end

  end
end
