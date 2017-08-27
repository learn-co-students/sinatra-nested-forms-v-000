require './environment'

module FormsLab
  class App < Sinatra::Base
    get '/' do # route is GET request to the root URL, i.e. localhost:9393
      erb :root # renders the views/root.erb view file to display the homepage in browser
    end

    get '/new' do # route is a GET request to '/new'
      erb :'pirates/new' # renders the views/pirates/new.erb view file, which contains code to create the form
    end # So, when user goes to localhost:9393/new in browser, they will see the form to fill out and submit

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate]) # instantiate @pirate instance, passing params[:pirate] i.e. the nested hash with all the information about the pirate and his ships, to #new
      # the "ships" key of the params[:pirate] hash points to an array of hashes, where each hash element contains info about a single ship in key/value pairs
      # each hash element of the array contains the keys :name, :type and :booty, pointing to their respective values (the data from the submitted form)
      params[:pirate][:ships].each do |ship_hash|  # iterate through the array of hashes
        Ship.new(ship_hash) # for each hash element in the array (which contains info for a single ship), instantiate a ship instance, passing in the hash as argument of #new.
      end
      @ships = Ship.all # call class method #all on Ship class to return the array of all ship instances, stored in @ships instance variable (to pass to the view file show.erb)

      erb :'pirates/show' # render the views/pirates/show.erb view file, which will process the form, displaying data about the pirate and his ships in browser
    end
    
  end
end
