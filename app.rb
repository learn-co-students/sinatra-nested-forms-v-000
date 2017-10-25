require './config/environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end 

    get '/pirates' do
      @pirates = Pirate.all
      erb :'pirates/index'
    end  
    
    get '/pirates/new' do
      erb :'pirates/new'
    end

    get '/pirates/:id' do
      @pirate = Pirate.find(params[:id])
      erb :'pirates/show'
    end  

    post '/pirates' do
      pirate = Pirate.new(name: params[:pirate][:name], height: params[:pirate][:height], weight: params[:pirate][:weight])
      params[:pirate][:ships].each do |ship|
        ship = Ship.new(ship)
        ship.pirate = pirate
        ship.save
      end
      redirect to "/pirates/#{pirate.id}"
    end
   

  end  #  End of Class
end  #  End of Module
