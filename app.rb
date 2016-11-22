require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do 
      erb :index
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do 
      @pirate = Pirate.new(params[:name], params[:weight], params[:height])
      
      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end
 
      @ships = Ship.all

      erb :pirates
    end

  end
end
