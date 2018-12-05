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
      @pirate_name = pirate[name]
      @pirate_weight = pirate[weight]
      @pirate_height = pirate[height]
      erb :'pirates/show'
    end



end
end
