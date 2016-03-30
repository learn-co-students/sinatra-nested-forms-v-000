require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do 
      erb :index
    end

    get '/new' do 
      erb :'pirates/new'
    end

    post '/pirates' do 
      @pirates = params[:pirate]
    end

  end
end
