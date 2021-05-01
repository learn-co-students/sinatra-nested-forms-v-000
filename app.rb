require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get "/" do
      erb :root
    end

    get "/new" do
      erb :"pirates/new"
    end
    
    post "/pirates" do
      # @pirate = Pirate.new(params[:pirate.name], params[:weight], params[:height]) # doesn't work
      # get a single pirate's information ready
      @pirate = Pirate.new(params[:pirate])
      
      # pirate can have ships
      @ships = []
      params[:pirate][:ships].each do |info|
        @ships << Ship.new(info)
      end
      
      erb :"pirates/show"
    end

    
  end # end of class
  
end # end of module