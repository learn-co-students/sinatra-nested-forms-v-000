require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :choice
    end

    post '/pirates' do

      @pirate = Pirate.new("#{params[pirate][name]}", "#{params[pirate][weight]}", "#{params[pirate][weight]}")
      @ship = Ship.new("#{params[pirate][ships][][name]}","#{params[pirate][ships][][type]}", "#{params[pirate][ships][][booty]}")
      erb :display
    end

  end
end
