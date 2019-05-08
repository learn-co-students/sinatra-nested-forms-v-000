require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new" # Directs to the new view form
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate]) # Received data from new view form. Send pirate info including nested ship info that will not be used.

      params[:pirate][:ships].each do |ship| # Iterate through nested ship info and create new ship objects for each in the array.
        Ship.new(ship)
      end
      @all_ships = Ship.all # Create instance variable type array of all ships.


      erb :"pirates/show" # Redirect to show data using created objects.
    end

  end
end
