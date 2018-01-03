require './config/environment'

module FormsLab
  class App < Sinatra::Base
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    get '/privateers/new' do
      erb :'privateers/new'
    end

    post '/privateers' do
      @privateer = Privateer.new(params[:privateer])
      erb :'privateers/show'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end
      @ships = Ship.all

      erb :'pirates/show'
#     raise params.inspect
    end

  end
end
