require './environment'

module FormsLab
  class App < Sinatra::Base

    get "/" do
        erb :root
    end

    get "/new" do
        erb :"pirates/new"
    end

    post "/pirates" do
        @all_p = params
        #@all_p = params["pirate"]
        @pirate=Pirate.new(params["pirate"]["name"], params["pirate"]["weight"], params["pirate"]["height"])

        params[:pirate][:ships].each do |details|
            Ship.new(details["name"], details["type"], details["booty"])
        end

        @ships = Ship.all

        erb :"pirates/show"
    end

  end
end
