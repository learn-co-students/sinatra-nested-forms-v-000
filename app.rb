require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do #what is typed in the URL
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      params[:pirate][:ships].each do |stuff|
        Ship.new(stuff)
      end #what the input name is called
      @ships = Ship.all #this is how we access a constant
      erb :'pirates/show'
    end

  end
end
