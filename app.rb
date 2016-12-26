require './environment'
require_relative 'app/models/pirate'
require_relative 'app/models/ship'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new" #Usage for 'new' file within the the 'pirates' sub-folder
    end

    post '/pirates' do
      #It is important to specify "[:pirate] in params, since the "Pirate" class does not know of "Ships" and cannot process ship attributes
      @pirate = Pirate.new(params[:pirate])

      #This creates new instances of Ships with the "Ship" only params
      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end

      #This is useful to be called back in the show.erb
      @ships = Ship.all

      erb :"pirates/show"
    end
  end
end
