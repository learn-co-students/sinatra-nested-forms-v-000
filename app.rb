require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do
      erb  :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      #form stuffs
      @pirate_name = params[:name]

      erb :'pirates/show'
    end


  end
end
