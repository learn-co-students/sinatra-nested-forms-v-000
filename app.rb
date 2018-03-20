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
      info = params[:pirate]
      @pirate = Pirate.new(name: info[:name], weight: info[:weight], height: info[:height])

      info[:ships].each do |details|
        ship = Ship.new(details)
        ship.pirate = @pirate
        ship.save
      end

      erb :'pirates/show'
    end

  end
end
