require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    post '/pirates' do    # this should be a post route; when a form is submitted, it shoud go to a post route
      @pirates = Pirate.create(pirate["pirate"])
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
