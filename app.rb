require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end
    
    get '/new' do
      erb :'pirates/new'
    end
    
    post '/pirates' do
<<<<<<< HEAD
      @pirate = Pirate.new(params[:pirate])
      #binding.pry
 
      params[:pirate][:ships].each do |details|
      Ship.new(details)
      end
 
      @ships = Ship.all
=======
>>>>>>> 41705ad0d1e8c8770d062bc86a1fe6d77a523e24
      erb :'pirates/show'
    end

  end
end
