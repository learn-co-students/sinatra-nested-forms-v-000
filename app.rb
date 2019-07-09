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
      # puts params 
      
      #params = {
      #  "pirate" => {
      #    "name" => "Captain Hook",
      #    "weight" => "150 lbs",
      #    "height" => "5ft, ll in",
      #    "ships" => [
      #      {"name" => "Jolly Roger", "type" => "Neverland ship", "booty" => "Lost Boys"},
      #      {"name" => "Flying Dutchman", "type" => "ghost ship", "booty" => "cursed gold"}
      #    ]
      #  }
      #}
      
      @pirate = Pirate.new(params[:pirate])
      
      params[:pirate][:ships].each do |ship_attributes|
        Ship.new(ship_attributes)
      end 
      
      @ships = Ship.all
      
      # puts Pirate.all, @ships
      
      erb :"pirates/show"
    end
  end
end
