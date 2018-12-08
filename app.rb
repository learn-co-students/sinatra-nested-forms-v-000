require './environment'

module FormsLab
  class App < Sinatra::Base

    get "/" do
      erb :'pirates/index'
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = params[:pirate]
      @ships = params[:pirate][:ships]
       erb :'/pirates/show'
    end

  end

end
