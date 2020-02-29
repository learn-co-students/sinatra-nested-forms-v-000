require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
        "Welcome to the Nested Forms Lab! let's navigate to the '/new'"
    end
    
    get '/new' do
      erb :"pirates/new"
    end
    
    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      params[:pirate]["ships"].each do |ship|
        Ship.new(ship)
      end
      @ships = Ship.all
      # binding.pry
      erb :"pirates/show"
    end

  end
end
