require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate].reject{ |key, value| key == "ships" })
      @ships = params[:pirate][:ships].collect do |ship|
        Ship.new(ship)
      end
      erb :"pirates/show"
    end
  end
end
