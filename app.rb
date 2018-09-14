require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    
    get '/' do
      erb :index
    end
    
    get '/new' do
      erb :"pirates/new"
    end
    
    get 'pirates/:id' do
      @pirate = Pirate.find(params[:id])
      
      erb :"pirates/show"
    end
    
    post '/pirates' do
      pirate = Pirate.new(name: params[:pirate][:name], height: params[:pirate][:height], weight: params[:pirate][:weight])
      params[:pirate][:ships].each do [ships]
        ship = Ship.new(ship)
        ship.pirate = pirate
        ship.save
      end

      # redirect to :"pirates/#{pirate_id}"
      erb :"pirates/show"
    end

  end
end
