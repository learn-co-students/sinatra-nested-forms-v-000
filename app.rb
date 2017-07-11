require './environment'
require 'pry'
module FormsLab
  class App < Sinatra::Base

    get '/' do

      erb :index
    end

    get '/new' do

      erb :'pirates/new'
    end

    post '/pirates' do
      @thief = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end

      @shippy = Ship.all

      erb :'pirates/show'
    end

  end
end
