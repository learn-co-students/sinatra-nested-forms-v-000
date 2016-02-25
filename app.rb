require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    set :views, File.dirname(__FILE__) + '/views/pirates'

    get '/' do   
      erb :index 
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height])
      params[:pirate][:ships].each { |ship| Ship.new(ship) }
      @ships = Ship.all
      erb :show
    end

  end
end
