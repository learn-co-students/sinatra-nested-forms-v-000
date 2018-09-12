require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :'pirates/index' #default just looks in views
    end

    get '/new' do
      erb :'pirates/new'
    end

    #get '/pirates' do
      #@pirates = Pirate.all
      #erb :'pirates/new'
      #gives all the pirates
    #end

    #for single pirate:
      #get '/pirates/:id' do

      #end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate]) #storing in variable gives show.erb something to call .name and other methods on

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end

      @ships = Ship.all #can then call on with index number

      erb :'pirates/show'
    end

  end
end
