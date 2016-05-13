require './environment'

module FormsLab
  class App < Sinatra::Base

    set :views, settings.root + '/views/pirates'

    get '/' do
      erb :index
    end

    get'/new' do
      erb :new
    end

    post '/pirates' do
      @pirate = Pirate.new(params)

      params[:pirate][:ships].each do |ship|
       Ship.new(ship)
      end

      @ships = Ship.all

      erb :show
    end

    get '/pirates' do
      erb :show
    end

  end
end
