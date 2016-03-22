require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
      #redirect to('/new')
    end

     get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end

      @ships = Ship.all
      @ship1 = Ship.all[0]
      @ship2 = Ship.all[1]

      erb :"pirates/show"
    end

  end
end
