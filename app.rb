require './environment'

module FormsLab
  class App < Sinatra::Base

    # render the home page
    get '/' do
      erb :root
    end

    # render the new pirate page
    get '/new' do
      erb :'pirates/new'
    end

    # create a new pirate and render the show page
    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |ship_details|
        @pirate.ships.push(Ship.new(ship_details))
      end
      
      erb :'pirates/show'
    end

  end
end
