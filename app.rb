require './environment'

module FormsLab
  class App < Sinatra::Base
    get '/' do
      erb :root
    end
    # code other routes/actions here
    get '/new' do
      erb :pirates
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:name])

      params[:pirate][:ship].each do |details|
        Ship.new(details)
      end
      @ships = ship.all
      erb :pirates
    end

  end
end
