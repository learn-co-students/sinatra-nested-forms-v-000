require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :user_input
    end

    get '/new' do
      erb :new
    end

  end
end
