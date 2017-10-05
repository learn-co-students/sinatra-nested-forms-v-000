require './environment'

module FormsLab
  class App < Sinatra::Base
    get '/' do
      erb :root
    end

    get '/new' do
      erb :"/pirates/new"
    end

    post '/pirates' do
      @new_pirate = Pirate.new(params)
      params[:pirate][:ships].each_with_index do |ships, index|
        @new_ship = Ship.new(ships)
      end
      erb :"/pirates/show"
    end
  end
end
