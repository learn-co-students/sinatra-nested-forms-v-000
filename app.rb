require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do

      erb :index
    end

    get '/new' do

      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params)
      @ship1 = Ship.new(params[:pirate][:ships][0])
      @ship2 = Ship.new(params[:pirate][:ships][1])
      # binding.pry
      erb :'pirates/show'
    end

  end
end
