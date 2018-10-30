require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :'pirates/index'
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
    #  @pirate = Pirate.new(params["pirate"]["name"], params["pirate"]["height"], params["pirate"]["weight"])
    @pirate = Pirate.new(params[:pirate])

      #params["pirate"]["ships"].each do |details|
      #  Ship.new(details["name"], details["type"], details["booty"])
      #end
      #@ships = Ship.all

       params[:pirate][:ships].each do |details|
         Ship.new(details)
       end
       @ships = Ship.all
      erb :'pirates/show'
    end

  end
end
