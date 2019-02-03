require './environment'
require 'pry'
module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/pirates' do
      @pirates = Pirate.all

      erb :'pirates/index'
    end

    get '/pirates/new' do
      erb :'pirates/new'
    end

    get '/pirates/:id' do #dinamic assignments #dynamic segment
      #binding.pry
      @pirate = Pirate.find(params["id"])

      erb :'pirates/show'
    end




    post '/pirates' do    # this should be a post route; when a form is submitted, it shoud go to a post route
    #  binding.pry
      pirate = Pirate.create(name: params[:pirate][:name], weight: params[:pirate][:weight], height: params[:pirate][:height])
      params[:pirate][:ships].each do |ship_data|
        ship = Ship.new(ship_data)
        ship.pirate = pirate
        ship.save
      end

      redirect to "/pirates/#{pirate.id}"
      # please go to localhost:9393/pirates/this pirate's id

    end

    get '/' do
      erb :root
    end

    #
    get '/new' do # this should be get '/new' do,
      erb :'pirates/new'
    end
    #



  end
end
