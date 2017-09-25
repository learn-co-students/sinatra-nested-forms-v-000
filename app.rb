require './environment'
require './models/pirate.rb'
require './models/ship.rb'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do
      @matey = Pirate.new(params[:pirate])
      @ships = params[:pirate][:ships]
      erb :show
    end
  end
end


