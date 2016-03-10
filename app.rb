require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
     erb :'pirates/new'
    end

    post '/pirate' do
      @pirate = Pirate.new(:pirate)
      
      params[:pirate][:ship].each do |ship, details|
        Ship.new(details)
      end
     
      @ships = Ship.all
      erb :'pirates/show'
    end
  
  end
end
