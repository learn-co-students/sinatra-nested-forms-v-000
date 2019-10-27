require './environment'

module FormsLab
  class FormsLab::App < Sinatra::Base

    get '/' do
      "Welcome to the Nested Forms Lab! let's navigate to the '/new'"
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      @ships = params[:pirate][:ships].map do |ship_info_hash|
        Ship.new(ship_info_hash)
      end
      erb :"pirates/show"
    end
  end
end
