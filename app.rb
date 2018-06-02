require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :new
    end


    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

    params[:pirate][:ship].each do |details|
      Ship.new(details)
    end

    @Ship = Ship.all


      erb :show
    end
  end


end
