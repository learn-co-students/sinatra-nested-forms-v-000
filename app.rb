require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do  #we receive a get request to the / route  and display the root.erb file
      erb :root
    end
    get '/new' do
      erb :'pirates/new'  #this goes to a sub directory in views
    end
    post  '/pirates'  do                        #we receeive a post request with the /pirates route
      @pirate = Pirate.new(params[:pirate])     #create a new instance of a pirate and set it to an instance variable that can be used in the erb file at bottom


      params[:pirate][:ships].each do |info|    #within the params hash, we can iterate over the array in ships to create a new ship with the hash info
       Ship.new(info)
      end
      @ships = Ship.all                         #call the class method to list all the ships as an array an set that to an instance variable / object
#
      erb :'pirates/show'                       #make this information available to and show the show.erb file located in the pirates directory in the views directory
    end
  end
end
