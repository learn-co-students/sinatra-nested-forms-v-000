require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :index
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |ships|
        Ship.new(ships)
      end

      @ships = Ship.all
# binding.pry
      erb :"pirates/show"
      # binding.pry
    end

  end
end
