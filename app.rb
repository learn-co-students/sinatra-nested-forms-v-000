require './environment'

module FormsLab

  class App < Sinatra::Base

    get '/' do
      "Welcome to the Nested Forms Lab! let's navigate to the '/new'."
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      #@pirate = Pirate.new(params[:pirate])

      @ships = params["pirate"]["ships"].each do |ship|
        s = Ship.new(ship)
      end

    end

  end

end
