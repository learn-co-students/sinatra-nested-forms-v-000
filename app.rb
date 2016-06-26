require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do 
      erb :root
    end

    get '/new' do 
      erb :'pirates/new'
    end

    post '/pirates' do 
      @pirate = Pirate.new(params[:pirate])

      #@ships = Ship.new(params[:pirate][:ships][0])

      params[:pirate][:ships].each do |info|
        Ship.new(info)
      end
      @ships = Ship.all
      erb :'pirates/show'
    end
  end

end
