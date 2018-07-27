require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'/pirates/new'
    end

    get '/show' do
      erb :show
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      
    end
  end
end
