require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      "Welcome to the Nested Forms Lab!" "let's navigate to the '/new'"
    end

    get '/new' do
      erb :'pirates/new'
    end

  post '/pirates' do
    #binding.pry
    #@pirate = [params[:name], params[:weight], params[:height]]
    @pirate = Pirate.new(name: params[:pirate][:name], weight: params[:pirate][:weight], height: params[:pirate][:height])
    @ship_1 = Ship.new(name: params[:pirate][:ships][0][:name], type: params[:pirate][:ships][0][:type], booty: params[:pirate][:ships][0][:booty])
    @ship_2 = Ship.new(name: params[:pirate][:ships][1][:name], type: params[:pirate][:ships][1][:type], booty: params[:pirate][:ships][1][:booty])

    #@ship = params[:name], params[:type], params[:booty
    #@pirates = Pirates.all
    #@pirates = Pirate.new(params[:name], params[:weight], params[:height])
    erb :'pirates/show'
  end
 end
end
