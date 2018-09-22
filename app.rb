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
      @pirate = Pirate.new(params)

      @ships = params["pirate"]["ships"].map do |ship|
        s = Ship.new(ship) #how do I instantiate these objects properyly?
      end
    

      erb :'pirates/show'
    end

  end

end
