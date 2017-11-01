require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do

      erb :"pirates/new"
    end

        post '/pirates' do
          @pirate = Pirate.new(params[:pirate])

          #@ship = Ship.new(params[:pirate][:ships][0])
          params[:pirate][:ships].each do |ship|
            Ship.new(ship)
          end

          @ship = Ship.all[0]
          @ship2 = Ship.all[1]
          
          erb :"pirates/show"
        end
  end
end
