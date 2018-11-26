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
      # binding.pry
      @pirate = Pirate.new(params[:pirate])
      # @pirate.name = params[:pirate][:name]
      # @pirate.weight = params[:pirate][:weight]
      # @pirate.height = params[:pirate][:height]
      # @pirate.ships = params[:pirate][:ships]
      erb :'pirates/show'
    end


  end
end
