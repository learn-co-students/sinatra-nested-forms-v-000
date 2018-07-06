require './environment'

module FormsLab
  class App < Sinatra::Base
    get '/' do
      erb :root
    end
    # code other routes/actions here
    get '/new' do
      erb :pirates
    end

    post '/pirates' do
      erb :pirates
    end

  end
end
