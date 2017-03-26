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
      @pirate = Pirate.new(params[:pirate])
      @ships = ship.all

      params[:pirate][:ships].each do |i|
        Ship.new(i)
      end

      erb :'pirates/show'
    end


  end
end
