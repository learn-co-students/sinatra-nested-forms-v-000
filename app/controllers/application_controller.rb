require './config/environment'
# This is the second controller of the program
class ApplicationController < Sinatra::Base

  configure do
    # For some reason I need this cause
    # Sinatra is looking for the views folder in the controllers folder
    set :views, "app/views"
  end

  get '/pirates' do
    @pirates = Pirate.all
    @ships = Ship.all
    erb :'pirates'
  end

  get '/pirates/:id' do
    @pirate = Pirate.find(params[:id])
    erb :'pirate'
  end
end
