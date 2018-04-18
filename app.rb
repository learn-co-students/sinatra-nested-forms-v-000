require './environment'
require 'pry'
module FormsLab
  class App < Sinatra::Base


    get '/' do
<<<<<<< HEAD
    erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      #binding.pry
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end
      @ships = Ship.all

      erb :'pirates/show'
    end
=======
    erb :'pirates/new'
    end


    post '/pirates/show' do
     puts params

       @pirate = Pirate.new(params[:pirate])

       params[:pirate][:ship].each do |details|
         Ship.new(details)
       end

       @ships = Ship.all

       erb :'pirates/show'
     end
>>>>>>> 98e98848162fab66e5951bdc6c60a7f13fb8c220
  end
end
