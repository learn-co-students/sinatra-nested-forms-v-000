require './environment'
require 'pry'
require_relative './models/pirate.rb'
require_relative './models/ship.rb'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get "/" do
      erb :root
    end

    get "/new" do
      erb :'pirates/new'
    end

    post "/pirates" do
      @pirate = Pirate.new(params[:pirate])


      @ships = Ship.all

      erb :'pirates/show'
    end

  end
end
