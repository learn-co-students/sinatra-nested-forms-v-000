require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :new
    end


    post '/show' do
     puts params
       @pirate = Pirate.new(params[:pirate])

       params[:pirate][:ship].each do |details|
         Ship.new(details)
       end

       @ships = Ship.all

       erb :show
     end
  end
end
