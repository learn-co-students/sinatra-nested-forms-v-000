require './environment'
require_relative './app/models/pirate.rb'
require_relative './app/models/ship.rb'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :new
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |attributes|
        Ship.new(attributes)
        @name = attributes[:name]
        @type = attributes[:type]
        @booty = attributes[:booty]
      end

      @ships = Ship.all

      erb :show
    end
  end
end
