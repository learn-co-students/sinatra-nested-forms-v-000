require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get "/" do
      erb :index
    end

    get "/new" do
      erb :"pirates/new"
    end

    post "/pirates" do
      @pirate = Pirate.new(params[:pirate])
      Ship.new_from_array(params[:pirate][:ships])
      @ships = Ship.all

      erb :"pirates/show"
    end

  end
end
