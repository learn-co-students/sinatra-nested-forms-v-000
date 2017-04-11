
module FormsLab
  class App < Sinatra::Base

    get "/" do
      erb :root
    end

    get "/new" do
      erb :new
    end

    post "/pirates" do
      @pirate = Pirate.new(params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height])
      Ship.new(params[:ship_name_1], params[:ship_type_1], params[:ship_booty_1])
      Ship.new(params[:ship_name_2], params[:ship_type_2], params[:ship_booty_2])
      erb :show
    end
  end
end
