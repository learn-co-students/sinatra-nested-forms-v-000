# Couldn't get my code to pass-kept on getting "500" errors
# Tried two other ppl's solutions & still couldn't pass.
#This is submission #131
#Don't know what the story is. Spent ALL DAY on this

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
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do | attributes|
          Ship.new(attributes)
        end
            @ships = Ship.all

      erb :'pirates/show'
    end
  end
end
