require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do #get root path, send get request to root file
      erb :root #sends you to :root
    end

    get '/new' do #get /new URL request, read from :pirates/new
      erb :'pirates/new' #pirates folder/new.erb
    end

    post '/pirates' do #post /pirates url from new.erb user form submission (action = /pirates)
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |ship_info| #[:ships] not [:ship]. name="pirate[ships][][name] creates the hash. has nothing to do with the ruby obj yet.
        Ship.new(ship_info)
      end

      @ships = Ship.all #sets @ships equal to all the ships created and placed in the SHIPS constant in ship.rb

      erb :'pirates/show' #display from show.erb on /pirates
    end

  end
end
