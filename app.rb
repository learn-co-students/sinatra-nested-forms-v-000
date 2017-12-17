require './environment'

module FormsLab
  class App < Sinatra::Base
    get '/' do
      erb :"pirates/new"
    end

    post '/pirates' do
      erb :show
    end

  end
end
