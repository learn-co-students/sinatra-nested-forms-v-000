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
      @pirate = Pirate.new(params["pirate"])
      @ship1 = Ship.new(params["pirate"]["ships"][0])
      @ship2 = Ship.new(params["pirate"]["ships"][1])

      # this is a way to iterate:
      # params[:pirate][:ships].each do |details|
      #   Ship.new(details)
      # end
      # @ships = Ship.all

      erb :"pirates/show"
    end
  end
end
