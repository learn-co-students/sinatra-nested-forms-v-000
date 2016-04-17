require './environment'

module FormsLab
  
  class App < Sinatra::Base
    get '/' do
      erb :'pirates/index'
    end

    get '/new' do
      erb :'pirates/new'
    end
    
    post '/pirates' do
      @pirate_data = params

      erb :'pirates/show'
    end
  end
  
end
