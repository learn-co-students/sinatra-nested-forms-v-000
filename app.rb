require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :index
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      # binding.pry
      @pirate = Pirate.new(params[:pirate])
      # binding.pry

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end

      @ships = Ship.all
      # binding.pry

      erb :"pirates/show"
    end

  end
end
