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
      @pirate = Pirate.new(name: params[:pirate][:name], height: params[:pirate][:height], weight: params[:pirate][:weight])
      params[:pirate][:ships].each do |details|
        Ship.new(name: details[:name], type: details[:type], booty: details[:booty])
      end

      @ships = Ship.all

      erb :"pirates/show"

    end

  end
end

# pirate info
# name: params[:pirate][:name], height: params[:pirate][:height], weight: params[:pirate][:weight]
