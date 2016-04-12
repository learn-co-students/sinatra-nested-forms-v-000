require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      params[:pirate][:ships].each { |ship_data| Ship.new(ship_data)}
      @ships = Ship.all
      erb :'pirates/show'
    end

    get '/new' do
      erb :'/pirates/new'
    end
  end
end
