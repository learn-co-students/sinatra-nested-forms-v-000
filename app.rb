require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      #binding.pry
      @pirate = Pirate.new(params[:pirate])
      #binding.pry
      params[:pirate][:ships].each do |s|
        Ship.new(s)
      end
      #binding.pry
      @ships = Ship.all

      erb :"pirates/show"
    end
  end
end
