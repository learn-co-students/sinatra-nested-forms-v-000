require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/pirates/new' do
      erb :'pirates/new'
    end

    get '/pirates' do
      @pirates = Pirate.all

      erb :'pirates/index'
    end

    get '/pirates/:id' do
      @pirate = Pirate.find(params[:id])

      erb :'pirates/show'
    end

    post '/pirates' do
      pirate = Pirate.new(name: params[:pirate][:name], weight: params[:pirate][:weight], height: params[:pirate][:height])

      params[:pirate][:ships].each do |details|
        ship = Ship.new(details)
        ship.pirate = pirate
        ship.save
      end

      @ships = Ship.all

      redirect to "/pirates/#{pirate.id}"
    end

  end
end
