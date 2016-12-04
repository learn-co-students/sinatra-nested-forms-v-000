require './environment'

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
      p = params[:pirate]
      @pirate = Pirate.new(p[:name],p[:weight],p[:height])
      s = params[:pirate][:ships]
      s.each do |ship|
        Ship.new(ship[:name], ship[:type], ship[:booty])
      end
      @ships = Ship.all
      erb :'pirates/show'
    end

  end
end
