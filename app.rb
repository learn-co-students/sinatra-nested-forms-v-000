require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do 
      erb :root 
    end
    
    get '/new' do 
      erb :'pirates/new'
    end
      
    post '/pirates' do 
      @pirate = Pirate.new(name: params[:pirate][:name], height: params[:pirate][:height], weight: params[:pirate][:weight])
      params[:pirate][:ships].each do |ship|
        @ships = Ship.new(ship)
       end
      erb :'pirates/show'
    end
  end
end
