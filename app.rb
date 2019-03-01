require './environment'
require 'pry'

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
      @pirate= Pirate.new(params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height])
      @ships= params[:pirate][:ships]
      @ship1= Ship.new(@ships[0][:name], @ships[0][:type], @ships[0][:booty])
      @ship2= Ship.new(@ships[1][:name], @ships[1][:type], @ships[1][:booty])
      erb :'pirates/show'
    end

  end
end

# {"pirate"=>
#   {"name"=>"Ian",
#   "weight"=>"165",
#   "height"=>"95",
#   "ships"=>
#     [{"name"=>"Titanic", "type"=>"Steam Liner", "booty"=>"Silver"},
#     {"name"=>"Carpathia", "type"=>"Rescue Ship", "booty"=>"Inner Tubes"}]}}
