require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/pirates/new' do
      erb :'pirates/new'
    end

    post '/pirates/show' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |args|
        Ship.new(args)
      end

      @ships = Ship.all

      erb :'pirates/show'
    end

  end
end
