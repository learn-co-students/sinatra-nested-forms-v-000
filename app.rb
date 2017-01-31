require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get "/" do
      erb :root
    end

    get "/new" do
      erb "pirates/new".to_sym
    end

    post "/pirates" do
      @pirate = Pirate.new(params[:pirate])
      params[:pirate][:ships].each {|ship| Ship.new(ship)}
      @ships = Ship.all
      erb "pirates/show".to_sym
    end

  end
end
