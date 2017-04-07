require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :'root'
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      Pirate.new(params['pirate'])
      @pirates = Pirate.all
      erb :'pirates/show'
    end

  end
end
