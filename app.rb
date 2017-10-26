require './environment'

module FormsLab
  class App < Sinatra::Base
    get '/' do
      erb :root   # the controller is directing you towards the root
    end

    get '/new' do   # nav to new. Controller goes to view for pirates
      erb :'pirates/new'
    end

    post '/pirates' do

      @pirate = Pirate.new(params[:pirate]) # through HTTP requests, 
      #we're posting data in the hash "params"
      # we're getting inside the object we want, and make that our params
      #This then talk to pirate model
      #

      params[:pirate][:ships].each do |details|
        Ship.new(details)

        #then intiates all the ships
      end
      @ships = Ship.all

      #return all the ships so we can cycle through them and display them

      erb :'pirates/show'
    end
    
    end
end
