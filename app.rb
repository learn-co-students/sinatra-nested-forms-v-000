require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :index
    end

    get '/new' do
      erb :new_pirate
    end

    post '/pirates' do
      @pirate=Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end

      @ships=Ship.all

      erb :display_pirate
    end

  end
end
