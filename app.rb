require './config/environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/pirates' do
      @pirates = Pirate.all

      erb :'pirates/index'
    end

    get '/pirates/new' do
      erb :'pirates/new'
    end

    get '/pirates/:id' do
      @pirate = Pirate.find(params[:id])

      erb :'pirates/show'
    end


    post '/pirates' do
      pirate = Pirate.create(name: params[:pirate][:name], height: params[:pirate][:height], weight: params[:pirate][:weight])
      params[:pirate][:ships].each do |ship_data|
        ship = Ship.new(ship_data)
        ship.pirate = pirate
        ship.save
      end
      redirect to "/pirates/#{pirate.id}"
    end
  end
end
