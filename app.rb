require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])      #first create a new Pirate using the info stored in params[:student],
                                                    #which contains the pirates's name, weight, and height and ships
      params[:pirate][:ships].each do |info|  #we iterate over params[:pirate][:ships], an array containing a series of hashes
                                                    #that each store individual ship information:
        Ship.new(info)                         #Use ships values passed into the .each block to create instances of our Ship class.
      end
        @ships = Ship.all
      erb :show
    end



  end
end
