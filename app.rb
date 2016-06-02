require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do 
      erb :root
    end

    get '/new' do 
      erb 'pirates/new'.to_sym
    end

    post '/pirates' do
      puts params
      erb 'pirates/show'.to_sym
    end

  end
end
