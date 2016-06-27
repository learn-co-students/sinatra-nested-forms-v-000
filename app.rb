require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do 
      erb :'pirates/new'
      # '<form>pirate[name]pirate[weight]pirate[height]pirate[ships][][name]pirate[ships][][type]pirate[ships][][booty]</form>'
    end

    post '/pirates' do
      raise "HELLO FROM post /pirates".inspect
      @pirate = Pirate.new(pirate[name], pirate[weight], pirate[height])
      erb :show 
    end   

  end
end
