require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/pirates' do
      @pirates = Pirate.all
      erb :/pirates/index'
    end

    get '/pirates/new' do
      erb :'pirates/new'
    end

    get '/pirates/:id' do
      @pirate = Pirate.find(params[:id])
    
      erb :'pirates/show'
  end

  #  post '/pirates' do
  #   pirate = Pirate.create(name: params[:pirate][:name], height: params[:pirate])
  #   params[:pirate][:ships].each do |ship_data|
  #     ship = Ship.new(ship_data)
  #     ship.pirate = pirate
  #     ship.save
  end

  end
end
