require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
        erb :root
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do
      ships = params["pirate"].delete("ships")
      @pirate = Pirate.new(params["pirate"])
      ships.each {|ship| Ship.new(ship)}
      erb :show
    end

  end
end
