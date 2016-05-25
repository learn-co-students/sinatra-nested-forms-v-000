require './environment'
require_relative 'app/models/pirate.rb'
require_relative 'app/models/ship.rb'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :"pirates/new"
      #erb :pirates:new #?
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:ship].each do |details|
        Ship.new(details)
      end

      @ships = Ship.all
      erb :"pirates/show"
    end
  end
end
