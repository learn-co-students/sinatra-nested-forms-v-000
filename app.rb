require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      @ids = %w[1 2]
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params)
      params[:pirate][:ships].each do |ship|
        Ship.new(ship)
      end
      @ships = Ship.all
      
      erb :'pirates/show'
    end

  end
end
