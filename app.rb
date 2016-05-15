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

      ship_info = @pirate.each do |ship, information|
        information
      end

      ship_info.each do |ship|
        Ship.new(ship)
      end

      @ships = Ship.all

      erb :'pirates/show'
    end

  end
end
