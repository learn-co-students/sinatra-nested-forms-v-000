require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
        erb :index
    end

    get '/new' do
      erb :new
    end

    post '/new' do
      erb :show
      @pirate = Pirate.new
      @pirate.age
      @pirate.height
      @pirate.weight 
    end

  end
end
