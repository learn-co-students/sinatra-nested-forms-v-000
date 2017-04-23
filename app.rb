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
      Pirate.new(params)

      params[:pirate][:ships].each do |ship_info|
        Ship.new(ship_info)
      end

      erb :'pirates/show'
    end
  end
end
