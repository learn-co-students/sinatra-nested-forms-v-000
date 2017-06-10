require './environment'

module FormsLab
  class App < Sinatra::Base

    get "/" do
      erb '/pirates/index'.to_sym
    end

    get "/new" do
      erb '/pirates/new'.to_sym
    end

    post "/pirates" do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |ship|
	       Ship.new(ship)
	    end

	    @ships = Ship.all

      erb '/pirates/show'.to_sym
    end

  end
end
