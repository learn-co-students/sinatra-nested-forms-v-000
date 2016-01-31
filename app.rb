require './environment'
require './models/pirate'
require './models/ship'

require 'pry'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |ship_info|
        Ship.new(ship_info) if not ship_info[:name].empty?
      end

      @ships = Ship.all

      erb :"pirates/show"
    end

  end
end
