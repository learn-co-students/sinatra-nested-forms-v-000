require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      "Welcome to the Nested Forms Lab!"
      "let's navigate to the '/new'"
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate[:name]], params[:pirate[:weight]], params[:pirate[:height]], params[:pirate[:ships]])
      @pirate.ships.each_with_index do |ship, index|
        @pirate.ships[index]
      end

      erb :'pirates/show'
    end

  end
end
