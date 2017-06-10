require './environment'
require_relative 'app/models/pirate.rb'
require_relative 'app/models/ship.rb'
# set :views, settings.root + '/pirates'


module FormsLab
  class App < Sinatra::Base


    get '/' do
      erb 'pirates/instructions'.to_sym
    end

    get '/new' do
      erb 'pirates/new'.to_sym
    end

    post '/pirates' do
      @new_pirate = Pirate.new(params[:pirate])
      # binding.pry
      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end
      @ships = Ship.all
      # binding.pry
      erb 'pirates/show'.to_sym
      # binding.pry
      # Ship.clear
    end


  end
end
