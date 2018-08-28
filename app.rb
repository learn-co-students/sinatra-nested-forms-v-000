require './environment'

module FormsLab
  class App < Sinatra::Base
    
    get '/' do
      erb :root
    end
   
    get '/new' do
      erb :'pirate/new'
    end
    
    post '/pirates' do
      @pirates = Pirate.new(params[:pirate])
      params[:pirate][:ships].each {|ship_info| Ship.new(ship_info)}
      
      @ships = Ship.all
      
      erb :'pirates/show'
    end
  end
end
