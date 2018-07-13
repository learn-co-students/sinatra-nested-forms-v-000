require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :'pirates/index'
    end
    
    get '/new' do
      erb :'pirates/new'
    end
    
    post '/pirates' do
      @pirate = Pirate.new( params[:pirate] )
      
      @ships = params[:pirate][:ships].collect do |attribute|
        Ship.new(attribute)
      end
      
      erb :'pirates/show'
    end

  end
end
