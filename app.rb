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
      @pirate= params[:pirate]
      @ship1= params[:ships][0]
      @ship2= params[:ships][1]
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
