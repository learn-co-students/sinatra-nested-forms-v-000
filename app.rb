require './environment'
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
      attributes = params[:pirate][:ships]

      attributes.each do |args|
        Ship.new(args)
      end

      @ships = Ship.all
      erb :"pirates/show"
    end

  end
end
