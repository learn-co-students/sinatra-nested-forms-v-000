require_relative 'config/environment'

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
      @new_pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |ship_hash|
        
          Ship.new(ship_hash)  
      end
      @Ships = Ship.all
      erb :pirates
    end
  end
end


