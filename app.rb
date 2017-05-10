require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    configure do
      set :views, "views/pirates"
    end

    get '/' do
      erb :index
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      params[:pirate][:ships].each do |ship_attributes|
        Ship.new(ship_attributes)
      end
      @ships = Ship.all
      erb :show
    end

  end
end
