require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/pirates' do
      erb :'pirates/show'
    end

    get '/' do
      erb :root
    end

    #
    get '/pirates/new' do
      erb :'pirates/new'
    end
    #



  end
end
