require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end
    
    get '/new' do
      erb :"pirates/new"
    end
  
    post '/pirates' do 
    
      
      @pirate = Pirate.new(params["pirate"])
      # binding.pry
      params["pirate"]["ships"].each{ |details| Ship.new(details)}
    
      @all_ships = Ship.all
        # binding.pry
      erb :"pirates/show"
    end
  
  end
end
