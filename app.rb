require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do
      erb :root
    end

    # get '/pirates' do
    #   @pirates = Pirate.all
    #   erb :'pirates/new'
    # end

    # get '/pirates/:id' do
    #   @pirate = Pirate.find(params["id"])
    #   erb :'pirates/show'
    # end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      params[:pirate][:ships].each do |ship_data|
        ship= Ship.new(ship_data)
      end
      @ships= Ship.all
      erb :'pirates/show'
    end

  end
end
