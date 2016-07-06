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
      #raise params.inspect
      @pirate = Pirate.new(params[:pirate])
     
      params[:pirate][:ships].each do |ship|
        Ship.new(ship)
        #binding.pry
      end

      erb :"pirates/show"
    end

  end
end
