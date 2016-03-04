require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :"/pirates/new"
    end

    post '/pirates' do
      Pirate.new(params[:pirate])
      @pirate = Pirate.all

      params[:pirate][:ships].each do |key|
        Ship.new(key)
      end
        @ships = Ship.all
        erb :"/pirates/show"
    end
  end
end
