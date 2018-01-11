require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new' 
    end

    post '/pirate' do
      @pirate = Pirate.new(params[:pirate])
    end

    post '/show' do
      erb :pirates/show
    end

  end
end
