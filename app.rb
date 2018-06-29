require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do 
      erb :"./pirates/index"
    end
  
    get '/new' do
      erb :"./pirates/new"
    end
    
    post '/pirates' do 
      
      # raise params.inspect
      
      @pirate = Pirate.new(params[:pirate])
      ships = params[:pirate][:ships]
      
      @ship_name_1 = ships[0][:name]
      @ship_type_1 = ships[0][:type]
      @ship_booty_1 = ships[0][:booty]
      
            
      @ship_name_2 = ships[1][:name]
      @ship_type_2 = ships[1][:type]
      @ship_booty_2 = ships[1][:booty]
      
      "#{@ship_name_1}"
      
      erb :"./pirates/show"
    end

  end
end



