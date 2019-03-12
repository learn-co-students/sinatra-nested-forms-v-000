require './environment'

module FormsLab
  class App < Sinatra::Base
    #persistance code
    get '/pirates' do 
      @pirates = Pirate.all
      erb :'pirates/index'
    end

    get '/pirates/new' do
      erb :'pirates/new'
    end

    get '/pirates/:id' do 
      @pirate = Pirate.find(params[:id])
      @ships = @pirate.ships
      erb :'pirates/show'
    end

    post '/pirates' do
      pirate = Pirate.create(
        name: params[:pirate][:name],
        height: params[:pirate][:height],
        weight: params[:pirate][:weight])

        params[:pirate][:ships].each do |ship_data|
          ship = Ship.new(ship_data)
          ship.pirate = pirate
          ship.save
        end
        redirect to "/pirates/#{pirate.id}"
    end

    # code other routes/actions here
    # get '/' do
    #   erb :root
    # end

    # get '/new' do 
    #   erb :"pirates/new"
    # end

    # post '/pirates' do 
    #   @pirate = Pirate.new(params[:pirate])

    #   params[:pirate][:ships].each do |ship|
    #     Ship.new(ship)
    #   end
    #   @ships = Ship.all

    #   erb :"pirates/show"
    # end

    # get '/pirates' do 
    #   erb :"pirates/show"
    # end

  end
end
