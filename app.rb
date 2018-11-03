require './config/environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :'pirates/index'
    end

    get '/new' do
      erb :'pirates/new'
    end

    get 'pirates/:id' do
      @pirate = Pirate.find(params[:id])
      @ships = @pirate.ships
      erb :'pirates/show'
    end

    post '/pirates' do
      @pirate = Pirate.create({name: params[:pirate][:name], height: params[:pirate][:height], weight: params[:pirate][:weight]})

      @ships = params[:pirate][:ships].collect do |attributes|
        ship = Ship.create(attributes)
        ship.pirate = @pirate
        ship
      end
      
      erb :'pirates/show'
    end

  end
end
