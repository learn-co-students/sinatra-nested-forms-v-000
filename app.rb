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
      @pirate = Pirate.new(
        params[:pirate][:name],
        params[:pirate][:weight],
        params[:pirate][:height]
      )

      @ships = params[:pirate][:ships].collect do |ship_details|
        Ship.new(
          ship_details[:name], 
          ship_details[:type],
          ship_details[:booty])
      end

      erb :"pirates/show"
    end
  end
end
