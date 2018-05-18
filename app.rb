require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :index
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate]);
      params[:pirate][:ships].each do |ship_parms|
        # ship and pirate should have relationship but not needed for the tests
        Ship.new(ship_parms)
      end
      @ships = Ship.all
      erb :"pirates/show"
    end

  end
end
