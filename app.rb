require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height], params[:pirate][:ships])
      @ship1 = Ship.new(@pirate.ships[0][:name],@pirate.ships[0][:type],@pirate.ships[0][:booty])
      @ship2 = Ship.new(@pirate.ships[1][:name],@pirate.ships[1][:type],@pirate.ships[1][:booty])


      erb :'pirates/show'
    end

  end
end
