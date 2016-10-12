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
      params[:pirate][:ships].each do |ship_data|
        ship = Ship.new(ship_data)
      end

      erb :'pirates/show'
    end

  end
end
