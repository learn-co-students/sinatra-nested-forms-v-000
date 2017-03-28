require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get "/" do
      erb :index
    end

    get "/new" do
      erb :new, :views => 'views/pirates'
    end

    post "/pirates" do
      @pirate = Pirate.new(params[:pirate])
      Ship.create_from_collection(params[:pirate][:ships])
      @ships = Ship.all
      erb :show, :views => 'views/pirates'
    end

  end
end
