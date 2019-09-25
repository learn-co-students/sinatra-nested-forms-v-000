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
      name, weight, height = params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height]
      @pirate = Pirate.new(name, weight, height)

      params[:pirate][:ships].each do |info|
        Ship.new(*info.values)
      end
      @ships = Ship.all
      erb :"pirates/show"
    end

  end
end
