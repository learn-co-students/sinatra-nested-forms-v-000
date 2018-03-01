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
      #binding.pry

      @pirate = Pirate.new(params[:pirate][:name], params[:pirate][:weight],params[:pirate][:height])
      ships = params[:pirate][:ships]

      ships.each{|i|
        Ship.new(i[:name], i[:type], i[:booty])
      }
      @ships = Ship.all
      #binding.pry
      # params[ships].each do
      #
      # end
      erb :"pirates/show"
    end

  end
end
