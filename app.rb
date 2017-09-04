require './environment'

module FormsLab
  class App < Sinatra::Base

    # Had to set proper views location
    set :views, './views/pirates/'
    # code other routes/actions here
    get '/' do
      "Welcome to the Nested Forms Lab!<a href = '/new'> let's navigate to the '/new'</a>"
    end

    get '/new' do
      erb :new
    end

    post '/pirates'do
      @pirate = Pirate.new(params['pirate']['name'],params['pirate']['weight'],params['pirate']['height'])
      @ship1 = Ship.new(params["pirate"]['ships'][0]['name'],params["pirate"]['ships'][0]['type'],params["pirate"]['ships'][0]["booty"])
      @ship2 = Ship.new(params["pirate"]['ships'][1]['name'],params["pirate"]['ships'][1]['type'],params["pirate"]['ships'][1]["booty"])
      erb :show
    end
  end
end
