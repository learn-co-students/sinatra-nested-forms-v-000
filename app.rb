require './environment'

module FormsLab
  class App < Sinatra::Base
#==================routes================== 
  # root
#------------------------------------------ 
  get "/" do 
  	erb :root
  end
#------------------------------------------ 
  # /new
#------------------------------------------ 
  get "/new" do 
  	erb :'pirates/new'
  end
  
  post "/pirates" do 
    @pirate = Pirate.new(params[:pirate])
    
    params[:pirate][:ships].each do |s|
      Ship.new(s)
    end 
    
    @ships = Ship.all 
    erb :'pirates/show'
  end
#========================================== 
  end
end
