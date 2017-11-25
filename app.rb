require './environment'
require_relative "app/models/pirate"
require_relative "app/models/ship"
module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      "Welcome to the Nested Forms Lab!" "let's navigate to the '/new'"
    end

    get "/new" do
      erb :"pirates/new"
    end

    post '/pirates' do
      @pirates = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end

      @ships = Ship.all

      erb :ship
    end
  end
end
