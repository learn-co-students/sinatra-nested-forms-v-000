require './environment'
require 'pry'
module FormsLab
  class App < Sinatra::Base

    get '/' do
      "Welcome to the Nested Forms Lab!
      let's navigate to the '/new'"
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      pirate_params = params[:pirate]
      @pirate = Pirate.new(
      name: pirate_params[:name],
      weight: pirate_params[:weight],
      height: pirate_params[:height]
      )

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end
      @ships = Ship.all
      erb :'/pirates/show'

    end
    # code other routes/actions here
  end
end
