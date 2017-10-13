require './environment'

module FormsLab
  class App < Sinatra::Base

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
      @pirates = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end

      @ships = Ship.all
      
      puts @ships

      erb :show
    end
  end
end
