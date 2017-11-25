require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do

    end

    get "/new" do
      erb :"pirate/new"
    end

    post '/pirates' do
      @pirates = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end

      @ships = Ship.all

      erb :ship
    end
  end
end
