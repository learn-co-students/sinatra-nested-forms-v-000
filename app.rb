require './environment'
require 'pry'
module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    post '/pirates' do    # this should be a post route; when a form is submitted, it shoud go to a post route
      #binding.pry
      @pirates = Pirate.new(params["pirate"]["name"],params["pirate"]["weight"], params["pirate"]["height"])
      @ship1 = Ship.new(params["pirate"]["ships"][0]["name"], params["pirate"]["ships"][0]["type"], params["pirate"]["ships"][0]["booty"])
      @ship2 = Ship.new(params["pirate"]["ships"][1]["name"], params["pirate"]["ships"][1]["type"], params["pirate"]["ships"][1]["booty"])
      erb :'pirates/show'
    end

    get '/' do
      erb :root
    end

    #
    get '/new' do # this should be get '/new' do,
      erb :'pirates/new'
    end
    #



  end
end
