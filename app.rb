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
      @pirate = Pirates.new(params[:pirate])
     
      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end
     
      @ship = Ships.all
     
      erb :pirate
    end
    
  end
end
