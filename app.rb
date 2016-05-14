require './environment'
require "pry"

module FormsLab
  class App < Sinatra::Base

    get "/" do
      erb :root
    end

    get "/new" do
      erb :'pirates/new'
    end

    post "/pirates" do
      # binding.pry
      @pirate = Pirate.new(params[:pirate])

      ship_details = params[:pirate][:ships].each do |ship, details|
        details
      end

      ship_details.each do |ship|
        Ship.new(ship)
      end

      @ships = Ship.all

      erb :"pirates/show"
    end

  end
end
