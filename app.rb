require './environment'

module FormsLab
  class App < Sinatra::Base
    #persistance code
    get '/pirates' do 
      @pirates = Pirate.all
      erb :'pirates/index'
    end

    get '/pirates/:id' do 
      @pirate = Pirate.find(params[:id])
      erb :'pirates/show'
    end

    # code other routes/actions here
    # get '/' do
    #   erb :root
    # end

    # get '/new' do 
    #   erb :"pirates/new"
    # end

    # post '/pirates' do 
    #   @pirate = Pirate.new(params[:pirate])

    #   params[:pirate][:ships].each do |ship|
    #     Ship.new(ship)
    #   end
    #   @ships = Ship.all

    #   erb :"pirates/show"
    # end

    # get '/pirates' do 
    #   erb :"pirates/show"
    # end

  end
end
