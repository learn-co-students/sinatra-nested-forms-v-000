require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do

      erb :'pirates/new'
    end

    post '/pirates' do
      binding.pry
      @pirate = Pirate.new(params)
      @ship_1 = Ship.new(params)
      @ship_2 = Ship.new(params)
      erb :'pirates/show'
    end


  end
end
