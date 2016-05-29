require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    post '/pirates' do
      @pirate = Pirate.new(params["pirate"])

      params["pirate"]["ships"].each do |ship|
        Ship.new(ship)
      end

      @ships = Ship.all
      
      erb :'pirates/show'
    end

    get '/new' do
      erb :'pirates/new'
    end

  end
end
