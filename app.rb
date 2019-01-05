require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
  
  get "/" do 
    erb :root
  end
  
  get "/new" do 
     erb :'pirates/new'
  end
  
  post "/pirates" do 
    @pirate = Pirate.new(params[:name],params[:weight],params[:height])
    @first_ship = Ship.new(params[:name],params[:type],params[:booty])
    @second_ship = Ship.new(params[:name],params[:type],params[:booty])
    erb :'pirates/show'
  end
  

  end
end
