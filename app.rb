require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'/pirates/new'
    end

    get '/show' do
      erb :show
    end

    get '/pirates' do
      @pirates = Pirate.all

      erb :'pirates/index'
    end

  end
end
