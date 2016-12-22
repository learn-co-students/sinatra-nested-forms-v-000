require './environment'
require_relative 'models/ship.rb'
module FormsLab
  class App < Sinatra::Base
    get '/' do
      erb :root
    end
    get '/new' do
      erb :"pirates/new"
    end
    post '/pirates' do
      @data=params
      erb :"pirates/show"
    end
      
    # code other routes/actions here

  end
end
