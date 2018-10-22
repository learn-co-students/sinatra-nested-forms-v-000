require "pry"

module FormsLab
  class App < Sinatra::Base
    get '/' do
      "Welcome to the Nested Forms Lab! \n
      let's navigate to the '/new'"
      #erb :root
    end

	  get '/new' do
      erb :'pirates/new'
      #erb :new
    end
    
    post '/pirates' do
      #binding.pry
      @pirate = Pirate.new(params[:pirate])
      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end
      @ships = Ship.all
      erb :'pirates/show'
    end
  end
end
