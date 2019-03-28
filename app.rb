require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do

      erb :'/pirates/new'
    end

    post '/pirates' do

       #create one pirate
      @pirate = Pirate.new(params[:pirate])
      #loops the array and create the ships
      params[:pirate][:ships].each do |s|
        Ship.new(s)
      end
      # binding.pry
      @ships= Ship.all

      erb :'/pirates/show'
    end
  end
end
